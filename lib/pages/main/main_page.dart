import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '../../widgets/search_form_artefacts/search_form_artefacts.dart';

import 'dart:developer' as dev;

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover it!'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            SearchFormArtefacts(),
          ],
        ),
      ),
    );
  }
}
