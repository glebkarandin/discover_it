import 'package:beamer/beamer.dart';
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Введите поисковый запрос'),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    hintText: 'Например vermeer',
                  ),
                  onChanged: (value) {
                    setState(() {
                      queryString = value;
                    });
                    dev.log('change value : $value');
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                          )
                        )
                      ),
                      onPressed: () {
                        dev.log('form key state: ${_formKey.currentState}');
                        dev.log('query string $queryString');
                        context.read<EuropeanaBloc>().add(EuropeanaSearchEvent(queryString));
                        Beamer.of(context).beamToNamed('/artefacts');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('submit'),
                      )
                  ),
                )
              ],
            )
        )
    );
  }
}