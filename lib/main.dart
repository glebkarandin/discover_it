import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:europeana_repository/europeana_repository.dart';

import 'playground//playground.dart';

void main() async {
  // Stream<int> stream = countStream(10);
  // int sum = await sumStream(stream);
  // dev.log('sum : $sum');

  var repo = EuropeanaRepository();
  var results = repo.getArtefacts('vermeer');
  dev.log('results : $results');

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