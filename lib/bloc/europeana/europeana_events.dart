import 'package:europeana_api/europeana_api.dart';

abstract class EuropeanaEvent {}

class EuropeanaSearchEvent extends EuropeanaEvent {
  EuropeanaSearchEvent(this.queryString);

  String queryString = '';
}

class EuropeanaRecordEvent extends EuropeanaEvent {
  EuropeanaRecordEvent(this.queryString);

  String queryString = '';
}

class EuropeanaItemViewEvent extends EuropeanaEvent {
  EuropeanaItemViewEvent(this.artefact);

  Artefact artefact;
}