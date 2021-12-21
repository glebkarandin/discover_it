import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_state.dart';
import 'package:discover_it/pages/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'package:discover_it/pages/main/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLocations extends BeamLocation<BeamState> {
  AppLocations() : super() {
    addListener(_listener);
  }

  final EuropeanaBloc _europeanaBloc = EuropeanaBloc(EuropeanaStateInit());

  void _listener() {

  }

  @override
  Widget builder(BuildContext context, Widget navigator) {
    return BlocProvider.value(
      value: _europeanaBloc,
      child: navigator,
    );
  }

  @override
  List<String> get pathPatterns => ['/artefacts/:artefactId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
    const BeamPage(
      key: ValueKey('mainPage'),
      child: MainPage(),
    ),
    if (state.uri.pathSegments.contains('artefacts')) 
      const BeamPage(child: SearchPage())
  ];
}

final locationBuilder = BeamerLocationBuilder(
    beamLocations: [
      AppLocations(),
    ]
);