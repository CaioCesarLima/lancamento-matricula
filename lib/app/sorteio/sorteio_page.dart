import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../drawer_child.dart';
import 'sorteio_controller.dart';

class SorteioPage extends GetView<SorteioController> {
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
        body: SafeArea(child: Text('HomeController')));
  }
}
