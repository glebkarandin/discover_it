import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beamer/beamer.dart';

import 'dart:developer' as dev;

import 'package:europeana_repository/europeana_repository.dart';
import 'package:discover_it/navigation/location_builder.dart';

import 'bloc/europeana/europeana_bloc.dart';
import 'bloc/europeana/europeana_state.dart';
import 'pages/main/main_page.dart';
import 'playground//playground.dart';

void main() async {
  // Stream<int> stream = countStream(10);
  // int sum = await sumStream(stream);
  // dev.log('sum : $sum');

  // var repo = EuropeanaRepository();
  // var results = repo.getArtefacts('vermeer');
  // dev.log('results : $results');

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

    // return MaterialApp(
    //   title: 'Discover it!',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Discover it!'),
    //     ),
    //     body: BlocProvider<EuropeanaBloc>(
    //       create: (context) => EuropeanaBloc(EuropeanaStateInit()),
    //       child: MaterialApp.router(
    //           routeInformationParser: BeamerParser(),
    //           routerDelegate: routerDelegate,
    //           debugShowCheckedModeBanner: false,
    //       ),
    //     )
    //   )
    // );
  }
}
