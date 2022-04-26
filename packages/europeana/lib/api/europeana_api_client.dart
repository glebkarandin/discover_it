import 'dart:async';

import 'package:dio/dio.dart';
import 'package:europeana/europeana.dart';

import 'dart:developer' as dev;

class EuropeanaApiClient {
  static const _baseUrl = 'https://api.europeana.eu';

  Future<Artefacts> apiSearch(String query) async {
    final dioClient = Dio();
    Response response = await dioClient.get(
      '$_baseUrl/record/v2/search.json',
      queryParameters: {
        'wskey': '',
        'query': query
      }
    );
    // dev.log('response status code : ${response.statusCode}');

    return Artefacts.fromJson(response.data);
  }

  Future<ArtefactRecord> apiRecord(String recordId) async {
    final dioClient = Dio();
    Response response = await dioClient.get(
      '$_baseUrl/record/v2/$recordId.json',
      queryParameters: {
        'wskey': 'blabalket',
      }
    );

    return ArtefactRecord.fromJson(response.data);
  }
}