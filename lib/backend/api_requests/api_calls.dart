import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic promptJson,
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
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

/// End OpenAI ChatGPT Group Code

class GetGeminiEmbeddingCall {
  static Future<ApiCallResponse> call({
    String? userInput = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "models/text-embedding-004",
  "content": {
    "parts": [
      {
        "text": "${escapeStringForJson(userInput)}"
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getGeminiEmbedding',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/text-embedding-004:embedContent?key=AIzaSyCSdrrq7LL7cluJTZL2N4wYJxXADSle_dc',
      callType: ApiCallType.POST,
      headers: {},
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

  static dynamic embedding(dynamic response) => getJsonField(
        response,
        r'''$.embedding''',
      );
  static List<double>? embeddingValues(dynamic response) => (getJsonField(
        response,
        r'''$.embedding.values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class MatchDiaryEntriesCall {
  static Future<ApiCallResponse> call({
    List<double>? queryEmbeddingList,
  }) async {
    final queryEmbedding = _serializeList(queryEmbeddingList);

    final ffApiRequestBody = '''
{
  "query_embedding": ${queryEmbedding},
  "match_threshold":0.3,
  "match_count": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'matchDiaryEntries',
      apiUrl:
          'https://vskzokoctznvibxelotg.supabase.co/rest/v1/rpc/match_diary_entries',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZza3pva29jdHpudmlieGVsb3RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDkyMjAzNDksImV4cCI6MjA2NDc5NjM0OX0.BMUqspi1ZGXSB2k3ko1SgWg69BkwgL6iLSCNcAtu5Ik',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZza3pva29jdHpudmlieGVsb3RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDkyMjAzNDksImV4cCI6MjA2NDc5NjM0OX0.BMUqspi1ZGXSB2k3ko1SgWg69BkwgL6iLSCNcAtu5Ik',
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

  static String? matchedContent(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].content''',
      ));
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
