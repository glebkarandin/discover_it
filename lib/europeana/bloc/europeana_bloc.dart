import 'package:discover_it/europeana/bloc/europeana_events.dart';
import 'package:discover_it/europeana/bloc/europeana_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EuropeanaBloc extends Bloc<EuropeanaEvent, EuropeanaState> {
  EuropeanaBloc(EuropeanaState initialState) : super(initialState) {
    on<EuropeanaEvent>((event, emit) {

    });
  }
}