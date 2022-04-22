import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:europeana/europeana.dart';

import 'europeana_events.dart';
import 'europeana_state.dart';

import 'dart:developer' as dev;

class EuropeanaBloc extends Bloc<EuropeanaEvent, EuropeanaState> {
  EuropeanaBloc(EuropeanaState initialState) : super(initialState) {
    on<EuropeanaSearchEvent>(_onSearchEvent);
    on<EuropeanaRecordEvent>(_onRecordEvent);
    on<EuropeanaItemViewEvent>(_onItemViewEvent);
  }

  void _onSearchEvent (event, emit) async {
    dev.log('on search event ${event.queryString}');
    final repo = EuropeanaApiClient();
    try {
      final artefacts = await repo.apiSearch(event.queryString);
      emit(EuropeanaSearchCompleteState(artefacts));
      dev.log('response complete');
    } catch (e) {

    }

  }

  void _onRecordEvent(event, emit) async {
    final repo = EuropeanaApiClient();
    try {
      final record = await repo.apiRecord(event.queryString);
      emit(EuropeanaRecordCompleteState(record));
    } catch (e) {

    }
  }

  void _onItemViewEvent(event, emit) async {
    emit(EuropeanaItemViewState(event.artefact));
  }
}