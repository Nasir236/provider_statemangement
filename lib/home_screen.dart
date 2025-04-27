// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    print("builder");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Provider State Mangement')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(counter.toString(), style: TextStyle(fontSize: 67)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter++);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
