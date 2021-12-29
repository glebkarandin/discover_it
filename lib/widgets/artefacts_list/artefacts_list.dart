import 'package:beamer/beamer.dart';
import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_events.dart';
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
            dev.log('state : ${state.artefacts}');
            var list = state.artefacts.map((artefact)
                {
                  var edmPreview = artefact.edmPreview ?? [];
                  var artefactId = artefact.id ?? '';
                  var imageUri = edmPreview.isNotEmpty ? edmPreview[0] : '';
                  return GestureDetector(
                    onTap: () {
                      const snackBar = SnackBar(content: Text('Tap'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //TODO artefactId
                      Beamer.of(context).beamToNamed('/artefacts/2');
                      context.read<EuropeanaBloc>().add(EuropeanaItemViewEvent(artefact));
                      // context.read<EuropeanaBloc>().add(EuropeanaRecordEvent(artefactId));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Image.network(imageUri)
                          ),
                          const SizedBox(width: 10.0),
                          Text('completeness : ${artefact.completeness}'),
                        ],
                      ),
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