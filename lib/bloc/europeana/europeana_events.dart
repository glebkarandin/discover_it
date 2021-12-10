abstract class EuropeanaEvent {}

class EuropeanaSearchEvent extends EuropeanaEvent {
  EuropeanaSearchEvent(this.queryString);

  String queryString = '';
}