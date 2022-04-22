import 'package:europeana/api/europeana_api_client.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'dart:developer' as dev;

import 'package:discover_it/navigation/location_builder.dart';

void main() async {
  // Stream<int> stream = countStream(10);
  // int sum = await sumStream(stream);
  // dev.log('sum : $sum');

  // var repo = EuropeanaRepository();
  // var results = repo.getArtefacts('vermeer');
  // dev.log('results : $results');

  final api = EuropeanaApiClient();
  final artefacts = api.apiSearch('vermeer');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(locationBuilder: locationBuilder);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
