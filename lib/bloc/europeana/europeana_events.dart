abstract class EuropeanaEvent {}

class EuropeanaSearchEvent extends EuropeanaEvent {
  EuropeanaSearchEvent(this.queryString);

  String queryString = '';
}

class EuropeanaRecordEvent extends EuropeanaEvent {
  EuropeanaRecordEvent(this.queryString);

  String queryString = '';
}