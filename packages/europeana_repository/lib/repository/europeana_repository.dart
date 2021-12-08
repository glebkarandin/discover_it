import 'dart:async';

import 'package:europeana_api/europeana_api.dart' hide Artefacts;
import 'package:europeana_repository/europeana_repository.dart';

class EuropeanaRepository {
  EuropeanaRepository({EuropeanaApiClient? apiClient})
    : _apiClient = apiClient ?? EuropeanaApiClient();

  final EuropeanaApiClient _apiClient;

  Future<Artefacts> getArtefacts(String query) async {
    final artefacts = await _apiClient.artefactsSearch(query);
    return Artefacts(items: artefacts.items);
  }
}
