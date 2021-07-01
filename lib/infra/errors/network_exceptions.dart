import 'dart:io';

import 'package:dio/dio.dart';

abstract class NetworkExceptions {
  static String getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              return "Request Cancelled";
              break;
            case DioErrorType.connectTimeout:
              return "Request Timeout";
              break;
            case DioErrorType.other:
              return "No internet connection";
              break;
            case DioErrorType.receiveTimeout:
              return "Send timeout in connection with API server";
              break;
            case DioErrorType.response:
              switch (error.response.statusCode) {
                case 400:
                  return "Unauthorized request";
                  break;
                case 401:
                  return "Unauthorized request";
                  break;
                case 403:
                  return "Unauthorized request";
                  break;
                case 404:
                  return "Not Found";
                  break;
                case 409:
                  return "Error due to a conflict";
                  break;
                case 408:
                  return "Request Timeout";
                  break;
                case 500:
                  return "Internal Server Error";
                  break;
                case 503:
                  return "Service unavailable";
                  break;
                default:
                  var responseCode = error.response.statusCode;
                  return "Received invalid status code: $responseCode";
              }
              break;
            case DioErrorType.sendTimeout:
              return "Send timeout in connection with API server";
              break;
          }
        } else if (error is SocketException) {
          return "No internet connection";
        } else {
          return "Unexpected error occurred";
        }
        return "Unexpected error occurred";
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        return "Format exception";
      } catch (_) {
        return "Unexpected error occurred";
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return "Unable to process the data";
      } else {
        return "Unexpected error occurred";
      }
    }
  }
}
