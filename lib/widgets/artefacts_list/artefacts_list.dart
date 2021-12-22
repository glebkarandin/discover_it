import 'package:beamer/beamer.dart';
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
            var list = state.items.items.map((artefact)
                {
                  dev.log('artefact : ${artefact.completeness}');
                  var edmPreview = artefact.edmPreview ?? [];
                  var imageUri = edmPreview.isNotEmpty ? edmPreview[0] : '';
                  return GestureDetector(
                    onTap: () {
                      const snackBar = SnackBar(content: Text('Tap'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Beamer.of(context).beamToNamed('/artefacts/2');
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Image.network(imageUri)
                        ),
                        Expanded(
                            child: Text('completeness : ${artefact.completeness}')
                        ),
                      ],
                    ),
                  );
                }
          ).toList();
            return Expanded(
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