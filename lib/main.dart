import 'package:flutter/material.dart';
import 'package:get_it_demo/app/locator.dart';
import 'package:get_it_demo/ui/views/reactive_example/reactive_example_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ReactiveExampleView(),
    );
  }
}
