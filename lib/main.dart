import 'package:flutter/material.dart';

import 'container_locator.dart';
import 'injected_container.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GET_IT'),
      ),
      body: Center(
        child: Contain(),
      ),
    );
  }
}

class Contain extends StatelessWidget {
  Contain({Key? key}) : super(key: key);

  final instance = locator<InjectedContainer>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        color: Colors.pinkAccent,
        child: instance.injectedContainer);
  }
}
