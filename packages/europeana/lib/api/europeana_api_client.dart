import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:europeana/europeana.dart';

import 'dart:developer' as dev;

class EuropeanaApiClient {
  static const _baseUrl = 'https://api.europeana.eu';

  Future<Artefacts> apiSearch(String query) async {
    final dioClient = Dio();
    final response = await dioClient.get(
      '$_baseUrl/record/v2/search.json',
      queryParameters: {
        'wskey': 'blabalket',
        'query': query
      }
    );
    final responseJson = jsonDecode(response.data) as Map<String, dynamic>;

    return Artefacts.fromJson(responseJson);
  }

  // Future<Artefacts> apiSearch(String query) async {
  //
  //   final uriRequest = Uri.https(
  //     _baseUrl,
  //     '/record/v2/search.json',
  //       <String, String>{
  //         'wskey': 'blabalket',
  //         'query': query
  //       }
  //   );
  //
  //   final response = await http.get(uriRequest);
  //
  //   final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
  //
  //
  // }
}