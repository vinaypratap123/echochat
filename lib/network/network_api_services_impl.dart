import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:echochat/app/app_strings.dart';
import 'package:echochat/network/api_exception.dart';
import 'package:echochat/network/network_api_service.dart';

import 'package:http/http.dart' as http;

class NetworkApiServicesImpl extends NetworkApiServices {
  // ---------------------------- GET API ----------------------------
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http
          .get(
        Uri.parse(url),
      )
          .timeout(
        const Duration(seconds: 30),
      );

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(AppStrings.noInternet);
    }
    return responseJson;
  }

  // ---------------------------- POST API ----------------------------
  @override
  Future<dynamic> postApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(
        Uri.parse(url),
        body: data,
      )
          .timeout(
        const Duration(seconds: 10),
      );
      log(response.body.toString());
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(AppStrings.noInternet);
    }

    log(responseJson.toString());
    return responseJson;
  }

// ---------------------------- RESPONSE STATUS CODE ----------------------------
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        Map<String, dynamic> errorResponse = jsonDecode(response.body);
        return errorResponse;
      case 404:
        Map<String, dynamic> errorResponse = jsonDecode(response.body);
        return errorResponse;

      default:
        Map<String, dynamic> errorResponse = jsonDecode(response.body);
        return errorResponse;
    }
  }
}
