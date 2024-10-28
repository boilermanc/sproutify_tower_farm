import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserProfileCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${userID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserProfile',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/rpc/get_user_profile_and_farm_info?id=eq.${userID}&select=*',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].first_name''',
      ));
  static String? farmID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].farm_id''',
      ));
  static String? farmName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].farm_name''',
      ));
  static String? farmUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].measurement_system''',
      ));
}

class TowerDashboardCall {
  static Future<ApiCallResponse> call({
    String? farmId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TowerDashboard',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/tower_dashboard?select=*&farm_id=eq.${farmId}&order=tower_location',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTowerDetailCall {
  static Future<ApiCallResponse> call({
    String? farmId = '',
    String? towerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTowerDetail',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/tower_dashboard?select=*&farm_id=eq.${farmId}&tower_id=eq.${towerId}&order=action_date.desc&limit=10',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPestObservationsCall {
  static Future<ApiCallResponse> call({
    String? farmId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPestObservations',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/pest_observations_view?select=*&farm_id=eq.${farmId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? observationDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].observation_date''',
      ));
  static String? createdDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static String? pestName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].pest_name''',
      ));
  static String? severityLevel(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].severity_level''',
      ));
  static String? severityColor(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].severity_color''',
      ));
  static String? towerNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tower_identifier''',
      ));
}

class GetFarmDataCall {
  static Future<ApiCallResponse> call({
    String? createdBy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetFarmData',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/farms?select=*&created_by=eq.${createdBy}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? farmID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? createdBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_by''',
      ));
  static String? farmName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].farm_name''',
      ));
}

class GetPestApplicationsCall {
  static Future<ApiCallResponse> call({
    String? farmId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPestApplications',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/view_pest_control_applications?select=*&farm_id=eq.${farmId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? treatmentArea(dynamic response) => (getJsonField(
        response,
        r'''$[:].treatment_area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PlantCatalogSearchCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'plantCatalogSearch',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/plants?plant_name=ilike.*${searchString}*&select=*&order=plant_name.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertLightingFixtureAllocationCall {
  static Future<ApiCallResponse> call({
    String? fixtureID = '',
    String? zoneID = '',
    int? quantity,
  }) async {
    final ffApiRequestBody = '''
{
  "_lighting_fixture_id": "${fixtureID}",
  "_zone_id": "${zoneID}",
  "_quantity": "${quantity}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpsertLightingFixtureAllocation',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/rpc/upsert_lighting_fixture_allocation',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
