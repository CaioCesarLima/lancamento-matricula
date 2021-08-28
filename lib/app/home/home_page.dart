import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/drawer_child.dart';
import 'package:lancamento_de_matricla/app/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
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
