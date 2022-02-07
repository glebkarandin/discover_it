import 'package:flutter/material.dart';

import '../../widgets/search_form_artefacts/search_form_artefacts.dart';

import 'dart:developer' as dev;

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/main_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchFormArtefacts()
        )
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text('домой : список : поиск'),
      ),
    );
  }
}
