import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:developer' as dev;

class ArtefactsList extends StatelessWidget {
  const ArtefactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EuropeanaBloc, EuropeanaState>(
        builder: (context, state) {
          if(state is EuropeanaSearchCompleteState) {
            dev.log('state : ${state.items.items}');
            var list = state.items.items.map((e) => const Text('ss')).toList();
            return Center(
              child: ListView(
                shrinkWrap: true,
                children: list,
              )
            );
          }
          return const Center(
              child: Text('items')
          );
        });
  }
}