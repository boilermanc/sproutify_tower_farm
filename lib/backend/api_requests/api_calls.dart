import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start neightn main chat Group Code

class NeightnMainChatGroup {
  static String getBaseUrl() =>
      'https://n8n.sproutify.app/webhook/018ed09f-98ba-4faf-94ed-bd3585877cf9';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    dynamic? promptJson,
    String? userMessage = '',
    String? farmID = '',
    String? userID = '',
  }) async {
    final baseUrl = NeightnMainChatGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "chatInput": "\${${userMessage}}",
  "farmID": "${farmID}",
  "sessionId": "${userID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat',
      callType: ApiCallType.POST,
      headers: {
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

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End neightn main chat Group Code

/// Start mcp Chat Group Group Code

class McpChatGroupGroup {
  static String getBaseUrl() =>
      'https://n8n.sproutify.app/webhook/ba3480d2-b729-4e49-988b-dcac0dadbe9b';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptMCPCall sendFullPromptMCPCall = SendFullPromptMCPCall();
}

class SendFullPromptMCPCall {
  Future<ApiCallResponse> call({
    dynamic? promptJson,
    String? userMessage = '',
    String? farmID = '',
    String? userID = '',
  }) async {
    final baseUrl = McpChatGroupGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "chatInput": "\${${userMessage}}",
  "farmID": "${farmID}",
  "sessionId": "${userID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt MCP',
      apiUrl: '${baseUrl}/chat',
      callType: ApiCallType.POST,
      headers: {
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

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
  String? widgetCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.widgetCode''',
      ));
}

/// End mcp Chat Group Group Code

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
  static String? profileImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].profile_image_url''',
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

  static List? actionDate(dynamic response) => getJsonField(
        response,
        r'''$[:].action_date''',
        true,
      ) as List?;
  static List<String>? towerLocation(dynamic response) => (getJsonField(
        response,
        r'''$[:].tower_location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? actionType(dynamic response) => getJsonField(
        response,
        r'''$[:].action_type_name''',
        true,
      ) as List?;
  static List? actionColor(dynamic response) => getJsonField(
        response,
        r'''$[:].action_type_color''',
        true,
      ) as List?;
  static List? quantity(dynamic response) => getJsonField(
        response,
        r'''$[:].quantity''',
        true,
      ) as List?;
  static List? lastName(dynamic response) => getJsonField(
        response,
        r'''$[:].last_name''',
        true,
      ) as List?;
  static List<int>? portsUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].ports_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalPorts(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_ports''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? usedPorts(dynamic response) => (getJsonField(
        response,
        r'''$[:].used_ports''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? availablePorts(dynamic response) => (getJsonField(
        response,
        r'''$[:].available_ports''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? seededDate(dynamic response) => getJsonField(
        response,
        r'''$[:].seeded_date''',
        true,
      ) as List?;
  static List<int>? totalQuantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? availableQuantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].available_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? plantName(dynamic response) => getJsonField(
        response,
        r'''$[:].plant_name''',
        true,
      ) as List?;
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

  static List<String>? plantName(dynamic response) => (getJsonField(
        response,
        r'''$[:].plant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? shortDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].short_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? plantImage(dynamic response) => (getJsonField(
        response,
        r'''$[:].plant_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? isActive(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_active''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? isCore(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_core''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? farmID(dynamic response) => getJsonField(
        response,
        r'''$[:].farm_id''',
        true,
      ) as List?;
  static List<String>? newImageURL(dynamic response) => (getJsonField(
        response,
        r'''$[:].new_image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ChemicalCatalogSearchCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'chemicalCatalogSearch',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/product_pest_catalog?product_name=ilike.*${searchString}*&select=*&order=product_name.asc',
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

  static List<bool>? isActive(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_active''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static bool? omriRated(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].omri_rated''',
      ));
  static String? productType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].product_type_name''',
      ));
  static String? productName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].product_name''',
      ));
  static String? productID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].product_id''',
      ));
  static String? productCategory(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].product_category_id''',
      ));
  static String? productTypeID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].product_type_id''',
      ));
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

class GetOpenWeatherCall {
  static Future<ApiCallResponse> call({
    String? farmLongitude = '',
    String? farmLatitude = '',
    String? farmUnit = '',
    String? farmID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOpenWeather',
      apiUrl:
          'https://n8n.sproutify.app/webhook/efb9b259-1837-447d-a104-80d54ed286df',
      callType: ApiCallType.GET,
      headers: {
        'api': 'e7fb73b24708a4b7b5d163f7ca179c2e',
      },
      params: {
        'longitude': farmLongitude,
        'latitude': farmLatitude,
        'format': farmUnit,
        'farmID': farmID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? localHumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.main.humidity''',
      ));
  static double? localTemp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.main.temp''',
      ));
  static int? localWindSpeed(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wind.speed''',
      ));
  static int? localClouds(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.clouds.all''',
      ));
  static String? localCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

class PlantCatalogSearchFunctionCall {
  static Future<ApiCallResponse> call({
    String? farmID = '',
    String? searchString = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'plantCatalogSearchFunction',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/rpc/get_plant_catalog?p_farm_id=${farmID}&search_term=${searchString}',
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

  static List<int>? plantIDFunction(dynamic response) => (getJsonField(
        response,
        r'''$[:].plant_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? plantNameFunction(dynamic response) => (getJsonField(
        response,
        r'''$[:].plant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? plantImageFunction(dynamic response) => (getJsonField(
        response,
        r'''$[:].plant_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? isInFarmFunction(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_in_farm''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class ResendAPITestCall {
  static Future<ApiCallResponse> call({
    String? emailAddress = '',
    String? invitationVariable = '',
  }) async {
    final ffApiRequestBody = '''
{
  "from": "team@sproutify.app",
  "to": "${escapeStringForJson(emailAddress)}",
  "subject": "Sign Up for Sproutify Farm",
  "html": "<h2>Welcome to Sproutify Farm!</h2><p>You've been invited to join our platform. Click the link below to create your account:</p><p><a href=\\"https://sproutifyfarmadmin.flutterflow.app/verifyinvite?invitation=${escapeStringForJson(invitationVariable)}\\">Create Your Account</a></p>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resendAPITest',
      apiUrl: 'https://api.resend.com/emails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer re_SKach3ee_MrU6LgXeLfY4VpLViHvuqh7Y',
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

class TowerPlantingCatalogCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
    String? farmID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'towerPlantingCatalog',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/tower_planting_catalog?farm_id=eq.${farmID}&is_active=eq.true&plant_name=ilike.%${searchString}%&order=is_spacer.desc,plant_name.asc',
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

  static List? seededDate(dynamic response) => getJsonField(
        response,
        r'''$[:].seeded_date''',
        true,
      ) as List?;
}

class GetWeeklyHarvestForcastCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
    String? farmId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getWeeklyHarvestForcast',
      apiUrl:
          'https://rsndonfydqhykowljuyn.supabase.co/rest/v1/weekly_harvest_forecast?farm_id=eq.${farmId}&plant_name=ilike.*${searchString}*&select=*&order=expected_ready_date.asc',
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

class GenerateTowerStatusReportwithNeightNCall {
  static Future<ApiCallResponse> call({
    String? farmID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "farm_id": "${escapeStringForJson(farmID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateTowerStatusReportwithNeightN',
      apiUrl: 'https://n8n.sproutify.app/webhook/generate-tower-report',
      callType: ApiCallType.POST,
      headers: {
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

  static String? towerReportHtml(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.html''',
      ));
}

class GenerateWeeklySeedingReportWithNeightNCall {
  static Future<ApiCallResponse> call({
    String? farmID = '',
    String? planID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "farm_id": "${escapeStringForJson(farmID)}",
  "plan_id": "${escapeStringForJson(planID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateWeeklySeedingReportWithNeightN',
      apiUrl:
          'https://n8n.sproutify.app/webhook/c0488413-779e-477c-a760-1efb3c89e862',
      callType: ApiCallType.POST,
      headers: {
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

  static String? towerReportHtml(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.html''',
      ));
}

class ValidateInvitationCodeCall {
  static Future<ApiCallResponse> call({
    String? invitationCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "invitation_code": "${escapeStringForJson(invitationCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validateInvitationCode',
      apiUrl:
          'https://n8n.sproutify.app/webhook/51eae998-ea40-41dc-b904-f793ca321ed1',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJzbmRvbmZ5ZHFoeWtvd2xqdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIwOTU0OTgsImV4cCI6MjAyNzY3MTQ5OH0.DmciGSlnVvOgxOGTfmkHm5YaD793VkAqOyKl7T__IiE',
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
