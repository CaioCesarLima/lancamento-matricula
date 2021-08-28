import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../drawer_child.dart';
import 'adicionar_controller.dart';

class AdicionarPage extends GetView<AdicionarController> {
  @override
  Widget build(BuildContext context) {
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
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), fillColor: Colors.white),
                  ),
                  
                ),
              ),
              TextButton(onPressed: (){}, child: Container(
                color: Colors.brown,
                padding: EdgeInsets.all(10),
                child: Text('Adicionar', style: TextStyle(
                  color: Colors.white
                ),),
              ))
            
            ],
          ),
        ));
  }
}