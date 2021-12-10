import 'package:europeana_repository/europeana_repository.dart';

abstract class EuropeanaState {}

class EuropeanaStateInit extends EuropeanaState {}

class EuropeanaStateLoading extends EuropeanaState {}

class EuropeanaSearchCompleteState extends EuropeanaState {
  EuropeanaSearchCompleteState(this.artefacts);

  Artefacts artefacts;

  Artefacts get items => artefacts;
}