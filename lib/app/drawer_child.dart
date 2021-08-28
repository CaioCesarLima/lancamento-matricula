import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/routes/app_pages.dart';

class DrawerChild extends StatelessWidget {
  const DrawerChild({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          GestureDetector(
            onTap: (){
              Get.toNamed(Routes.CADASTRO);
            },
            child: ListTile(
              title: Text('Adicionar Participante'),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(Routes.PARTICIPANTES);
            },
            child: ListTile(
              title: Text('Lista de Participantes'),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(Routes.SORTEIO);
            },
            child: ListTile(
              title: Text('Sorteio'),
            ),
          ),
        ],
      ),
    );
  }
}