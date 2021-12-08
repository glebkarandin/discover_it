import 'dart:async';
import 'dart:convert';

import 'package:europeana_api/europeana_api.dart';
import 'package:http/http.dart' as http;

class EuropeanaApiClient {
  EuropeanaApiClient({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();
  static const _baseUrl = '';
  final http.Client _httpClient;

  Future<Artefacts> artefactsSearch(String query) async {
    final uriRequest = Uri.https(
      _baseUrl,
      '/api/search/',
      <String, String>{'query': query}
    );
    final response = await _httpClient.get(uriRequest);

    //TODO Errors

    final responseJson = jsonDecode(response.body) as List;

    //TODO Errors

    return Artefacts.fromJson(responseJson as Map<String, dynamic>);
  }
}