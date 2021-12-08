import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'playground//playground.dart';

void main() async {
  Stream<int> stream = countStream(10);
  int sum = await sumStream(stream);
  dev.log('sum : $sum');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discover it!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Discover it!'),
        ),
        body: const MainPage(),
      )
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('center'),
    );
  }
}