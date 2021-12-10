import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:developer' as dev;

class SearchFormArtefacts extends StatefulWidget {
  const SearchFormArtefacts({Key? key}) : super(key: key);

  @override
  State<SearchFormArtefacts> createState() {
    return SearchFormState();
  }
}

class SearchFormState extends State<SearchFormArtefacts> {

  final _formKey = GlobalKey<FormState>();

  String queryString = '';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const Text('Введите поисковый запрос'),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Например vermeer',
                  ),
                  onChanged: (value) {
                    setState(() {
                      queryString = value;
                    });
                    dev.log('change value : $value');
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      dev.log('form key state: ${_formKey.currentState}');
                      dev.log('query string $queryString');
                      context.read<EuropeanaBloc>().add(EuropeanaSearchEvent(queryString));
                    },
                    child: const Text('submit')
                )
              ],
            )
        )
    );
  }
}