import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("builder");
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("count example"))),
      backgroundColor: Colors.blue,
      body: Center(
        child: Center(
          child: Consumer<CountProvider>(
            builder: (context, value, child) {
              print("only this widget build");
              return Text(
                value.count.toString(),
                style: TextStyle(fontSize: 45),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
