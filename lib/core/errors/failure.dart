// import 'dart:core';

// import 'package:dio/dio.dart';

// abstract class Failure {
//   final String errMessage;

//   Failure(this.errMessage);
// }

// class ServerFailure extends Failure {
//   ServerFailure(super.errMessage);

//   factory ServerFailure.fromDioException(DioException dioException) {
//     switch (dioException.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('Connection time is out with ApiServer');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure('Send time is out with ApiServer');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure('Receive time is out with ApiServer');
//       case DioExceptionType.badCertificate:
//         return ServerFailure('bad Certificate');
//       case DioExceptionType.badResponse:
//         return ServerFailure.fromResponse(
//             dioException.response!.statusCode!, dioException.response!.data);
//       case DioExceptionType.cancel:
//         return ServerFailure('Request to ApiServer was canceled');
//       case DioExceptionType.connectionError:
//         return ServerFailure('No internet connection');
//       case DioExceptionType.unknown:
//         return ServerFailure('Unexpected error, Please try again later');
//       default:
//         return ServerFailure('Oops, there was an error, Please try again');
//     }
//   }
//   factory ServerFailure.fromResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure('Your request not found, Please try again later');
//     } else if (statusCode == 500) {
//       return ServerFailure('Internal server error, Please try later');
//     } else {
//       return ServerFailure('Oops, there was an error, Please try again');
//     }
//   }
// }
