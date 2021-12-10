import 'package:discover_it/widgets/artefacts_list/artefacts_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/search_form_artefacts/search_form_artefacts.dart';

import 'dart:developer' as dev;

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchFormArtefacts(),
        ArtefactsList()
      ],
    );
  }
}
