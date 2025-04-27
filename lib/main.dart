// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/home_screen.dart';
import 'package:provider_statemangement/myprovider_Screen.dart';
import 'package:provider_statemangement/provider/count_provider.dart';
import 'package:provider_statemangement/provider/example_provider.dart';
import 'package:provider_statemangement/screen/count_example.dart';
import 'package:provider_statemangement/screen/example_one.dart';
import 'package:provider_statemangement/stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(home: ExampleOneScreen()),
    );
  }
}
