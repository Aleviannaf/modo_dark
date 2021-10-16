import 'package:fluterando/app_controller.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
    animation: AppController.instace, 
    builder: (context, child) {
      return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: AppController.instace.isDarkTheme ? Brightness.dark: Brightness.light),
      debugShowCheckedModeBanner: false,
    );
    });
  }
}
