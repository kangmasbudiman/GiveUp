import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetPersonCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPerson',
      apiUrl:
          'https://bualkrgknluudxdeujpx.supabase.co/rest/v1/datauser?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1YWxrcmdrbmx1dWR4ZGV1anB4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQyMDI0MTEsImV4cCI6MjAyOTc3ODQxMX0.M6zrbQiIfCT4GJHt_Humu3-ysK3EYKYwHZrgSixvu3A',
        'Authorization':
            'lTC+x991Y+wY/TCVpu3mFOlvFUvH+oWLsfyB3PntAVmX/qdN+x1HBSdiC1mn9LuUdZ9BByuMEJY5IkPrVEq/cA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nama(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? gender(dynamic response) => (getJsonField(
        response,
        r'''$[:].gender''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? alamat(dynamic response) => (getJsonField(
        response,
        r'''$[:].alamat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddUserCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
 {
       
        "name": "Devano",
        "gender": "Pria",
        "alamat": "Mayang"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: 'https://bualkrgknluudxdeujpx.supabase.co/rest/v1/datauser',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1YWxrcmdrbmx1dWR4ZGV1anB4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQyMDI0MTEsImV4cCI6MjAyOTc3ODQxMX0.M6zrbQiIfCT4GJHt_Humu3-ysK3EYKYwHZrgSixvu3A',
        'Authorization':
            'lTC+x991Y+wY/TCVpu3mFOlvFUvH+oWLsfyB3PntAVmX/qdN+x1HBSdiC1mn9LuUdZ9BByuMEJY5IkPrVEq/cA==',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
