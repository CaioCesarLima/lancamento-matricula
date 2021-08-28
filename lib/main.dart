import 'package:flutter/material.dart';
import 'package:lancamento_de_matricla/app/home/home_page.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:get/get.dart';

import 'app/home/home_binding.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 


  await Parse().initialize(
        'Oa7mRdrAROxyxmVhOnQwlOBZlrv0mWvAj9HyAYGC',
        'https://parseapi.back4app.com/',
        clientKey: 'W3o9hIHPSfG8N6ALtt7SkKlUSZ5mPeD8zAZJGQFU'
        );
        
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lançamento de Matrícula',
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
