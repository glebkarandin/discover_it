import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_bloc.dart';
import 'package:discover_it/bloc/europeana/europeana_state.dart';

class ArtefactItem extends StatelessWidget {
  const ArtefactItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EuropeanaBloc, EuropeanaState>(
          builder: (context, state) {
            if (state is EuropeanaRecordCompleteState) {
              var record = state.record;
              return Center(
                child: Text('state ${record.object}'),
              );
            }
            return const Center(
                child: Text('artefact item')
            );
          })
    );
  }
}