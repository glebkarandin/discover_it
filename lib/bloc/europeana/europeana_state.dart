import 'package:europeana/europeana.dart';

abstract class EuropeanaState {}

class EuropeanaStateInit extends EuropeanaState {}

class EuropeanaStateLoading extends EuropeanaState {}

class EuropeanaSearchCompleteState extends EuropeanaState {
  EuropeanaSearchCompleteState(this.response);

  Artefacts response;

  List<Artefact> get artefacts => response.items;
}

class EuropeanaRecordCompleteState extends EuropeanaState {
  EuropeanaRecordCompleteState(this.record);

  ArtefactRecord record;
}

class EuropeanaItemViewState extends EuropeanaState {
  EuropeanaItemViewState(this.artefact);

  Artefact artefact;
}