import 'package:dio/dio.dart';

abstract class Failure {
  final String erroMessage;

  const Failure(this.erroMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.erroMessage);

  factory ServerFailure.fromDaioErorr(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recevie timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure('Request to  ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet !');
        }
        return ServerFailure('Unexaption Error , Please try later! ');

      case DioExceptionType.badCertificate:
        throw UnimplementedError();
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(statusCode.toString());
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later! ');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server erorr , please try later ! ');
    } else {
      return ServerFailure('Opps there was an Erorr , Please try again');
    }
  }
}
