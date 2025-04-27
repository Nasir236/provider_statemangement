// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:flutter/material.dart';

class MyproviderScreen extends StatefulWidget {
  const MyproviderScreen({super.key});

  @override
  State<MyproviderScreen> createState() => _MyproviderScreenState();
}

class _MyproviderScreenState extends State<MyproviderScreen> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      counter++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myProvider"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateTime.now().hour.toString() +
                  " : " +
                  DateTime.now().minute.toString() +
                  " : " +
                  DateTime.now().second.toString(),
              style: TextStyle(fontSize: 67),
            ),
          ),
          Center(
            child: Text(counter.toString(), style: TextStyle(fontSize: 67)),
          ),
        ],
      ),
    );
  }
}
