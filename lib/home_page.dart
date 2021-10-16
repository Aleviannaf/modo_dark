import 'package:fluterando/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
        actions: [
          CustomSwith(),
        ],
      ),
      body: Center(child: CustomSwith()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomSwith extends StatelessWidget {
  const CustomSwith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instace.isDarkTheme,
      onChanged: (value) {
        AppController.instace.changeTheme();
      },
    );
  }
}
