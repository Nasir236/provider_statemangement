import 'package:flutter/material.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example_One"), backgroundColor: Colors.amber),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 1,
            value: value,
            onChanged: (val) {
              value = val;
              print(value);
              setState(() {});
            },
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.withOpacity(value),
                  ),
                  child: Center(child: Text("Container 1")),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(value),
                  ),
                  child: Center(child: Text("Container 2")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
