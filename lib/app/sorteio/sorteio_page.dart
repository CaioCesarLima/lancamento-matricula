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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text('Sorteio',style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,),
                      SizedBox(height: 10,),
                TextButton(onPressed: (){_.getParticipantes();}, child: Container(
                          color: Colors.brown,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Vai!',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                        SizedBox(height: 10,),
                _.isloading ? Center(
                  child: CircularProgressIndicator(),
                ):
                _.participanteSorteado != null ? Center(
                  child: Text(_.participanteSorteado.nome, style: TextStyle(color: Colors.white,
                  fontSize: 50),),
                ): Container()
              ],
            ),
          ),
        ));
      },
    );
  }
}
