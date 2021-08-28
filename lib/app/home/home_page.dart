import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/drawer_child.dart';
import 'package:lancamento_de_matricla/app/home/home_controller.dart';
import 'package:lancamento_de_matricla/app/models/participante_model.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
      backgroundColor: Colors.brown[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          
          elevation: 0,
        ),
        drawer: Drawer(
          child: DrawerChild(),
        ),
        body: 
          _.participantes.length == 0 ?
          Center(child: Text('Ainda sem participantes', style: TextStyle(
            color: Colors.white,
            fontSize: 24
          ),),) :
          Padding(
            padding: EdgeInsets.all(30),
            child: ListView.builder(
              itemCount: _.participantes.length,
              itemBuilder: (context, index){
                Participante participante = _.participantes[index];
                return ListTile(
                 title: Text(participante.nome, style: TextStyle(
                   color: Colors.white,
                   fontSize: 24
                 ),),
                );
              }),
          )
        );
      },
    );
  }
}
