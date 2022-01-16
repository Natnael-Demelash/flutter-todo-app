// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xFFF6F6F6),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/logo.png'),
              Container(
                margin: const EdgeInsets.only(bottom: 32.0),
              ),
              TaskCard(
                title: 'Get Started',
                desc:
                    'Hello! Welcome to What_Todo_App. this is a defaul task that you can edit or delete to start using the app',
              ),
              SizedBox(
                height: 12.0,
              ),
              TaskCard(
                title: 'Task 1',
                desc: 'Go to gym',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add_box)),
    );
  }
}
