import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../drawer_child.dart';
import 'sorteio_controller.dart';

class SorteioPage extends GetView<SorteioController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SorteioController>(
      init: SorteioController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text('Dia mundial do Jovem Adventista'),
              elevation: 0,
            ),
            drawer: Drawer(
              child: DrawerChild(),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Image.network(
                          'https://i.pinimg.com/originals/5e/33/08/5e3308012e3928f4e799533f9091d915.png'),
                    ),
                    Text(
                      'Sortear',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          _.getParticipantes();
                        },
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'Começar',
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _.isloading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : _.participanteSorteado != null
                            ? Center(
                                child: Text(
                                  _.participanteSorteado.nome,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 50),
                                ),
                              )
                            : Container()
                  ],
                ),
              ),
            ));
      },
    );
  }
}
