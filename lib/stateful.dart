import 'package:flutter/material.dart';

class StatefulView extends StatefulWidget {
  const StatefulView({super.key});

  @override
  State<StatefulView> createState() => _StatefulViewState();
}

class _StatefulViewState extends State<StatefulView> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stateful")),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Center(
                child: Text(counter.toString(), style: TextStyle(fontSize: 67)),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
