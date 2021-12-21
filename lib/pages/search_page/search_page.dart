import 'package:flutter/material.dart';

import '../../widgets/search_form_artefacts/search_form_artefacts.dart';
import '../../widgets/artefacts_list/artefacts_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchFormArtefacts(key: key),
          ArtefactsList(key: key),
        ],
      ),
    );
  }
}