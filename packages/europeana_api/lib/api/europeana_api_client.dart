import 'dart:async';
import 'dart:convert';

import 'package:europeana_api/europeana_api.dart';
import 'package:europeana_api/models/artefact_record.dart';
import 'package:http/http.dart' as http;

import 'dart:developer' as dev;

class EuropeanaApiClient {
  EuropeanaApiClient({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();
  static const _baseUrl = 'api.europeana.eu';
  final http.Client _httpClient;

  Future<Artefacts> artefactsSearch(String query) async {
    final uriRequest = Uri.https(
      _baseUrl,
      '/record/v2/search.json',
      <String, String>{
        'wskey': 'blabalket',
        'query': query
      }
    );
    final response = await _httpClient.get(uriRequest);

    //TODO Errors

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    //TODO Errors

    return Artefacts.fromJson(responseJson);
  }

  Future<ArtefactRecord> artefactRecord(String recordId) async {
    final uriRequest = Uri.https(
        _baseUrl,
        '/record/v2/$recordId.json',
        <String, String>{
          'wskey': 'blabalket',
        }
    );

    final response = await _httpClient.get(uriRequest);

    //TODO Errors

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    //TODO Errors

    return ArtefactRecord.fromJson(responseJson);
  }
}