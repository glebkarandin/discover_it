import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_state.dart';

class ArtefactItem extends StatelessWidget {
  const ArtefactItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: BlocBuilder<EuropeanaBloc, EuropeanaState>(
          builder: (context, state) {
            if (state is EuropeanaRecordCompleteState) {
              var record = state.record;
              return Container(
                constraints: const BoxConstraints.expand(),
                margin: const EdgeInsets.all(20.0),
                color: Colors.white,
                child: Text('state ${record.object}'),
              );
            }
            if (state is EuropeanaItemViewState) {
              var artefact = state.artefact;
              var titles = artefact.title ?? [];
              var title = titles.isNotEmpty ? titles[0] : '';
              return Container(
                constraints: const BoxConstraints.expand(),
                margin: const EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text('title : $title'),
                    Text('url preview : ${artefact.edmPreview}'),
                  ],
                )
              );
            }
            return const Center(
                child: Text('artefact item')
            );
          })
    );
  }
}