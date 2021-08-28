import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../drawer_child.dart';
import 'adicionar_controller.dart';

class AdicionarPage extends GetView<AdicionarController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdicionarController>(
      init: AdicionarController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
            backgroundColor: Colors.brown[300],
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text('Voltando para casa'),
              elevation: 0,
            ),
            drawer: Drawer(
              child: DrawerChild(),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cadastre um novo participante do Sorteio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: _.nome,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.white),
                      ),
                    ),
                  ),
                  _.isloading.value ?
                  Center(
                    child: CircularProgressIndicator(),
                  )
                  :
                  TextButton(
                      onPressed: () {
                        _.cadastrar();
                      },
                      child: Container(
                        color: Colors.brown,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Adicionar',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            ));
      },
    );
  }
}
