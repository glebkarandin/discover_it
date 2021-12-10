import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:europeana_api/europeana_api.dart';
import 'package:europeana_repository/europeana_repository.dart';

import 'europeana_events.dart';
import 'europeana_state.dart';

import 'dart:developer' as dev;

class EuropeanaBloc extends Bloc<EuropeanaEvent, EuropeanaState> {
  EuropeanaBloc(EuropeanaState initialState) : super(initialState) {
    on<EuropeanaSearchEvent>(_onSearchEvent);
  }

  void _onSearchEvent (event, emit) async {
    dev.log('on search event ${event.queryString}');
    final repo = EuropeanaRepository();
    try {
      final artefacts = await repo.getArtefacts(event.queryString);
      // String artefacts = 'await repo.getArtefacts(event.queryString)';
      emit(EuropeanaSearchCompleteState(artefacts));
      dev.log('response complete');
    } catch (e) {

    }

  }
}