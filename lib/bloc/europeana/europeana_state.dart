import 'package:europeana_api/europeana_api.dart';

abstract class EuropeanaState {}

class EuropeanaStateInit extends EuropeanaState {}

class EuropeanaStateLoading extends EuropeanaState {}

class EuropeanaSearchCompleteState extends EuropeanaState {
  EuropeanaSearchCompleteState(this.artefacts);

  Artefacts artefacts;

  Artefacts get items => artefacts;
}

class EuropeanaRecordCompleteState extends EuropeanaState {
  EuropeanaRecordCompleteState(this.record);

  ArtefactRecord record;
}