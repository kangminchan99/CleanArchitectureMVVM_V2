import 'package:cleanarchitecture_v2/core/domain/error/error.dart';

enum NetworkError implements ErrorHandler {
  requestTimeout,
  noInternet,
  serverError,
  unknown;

  @override
  String toString() {
    return switch (this) {
      NetworkError.requestTimeout => '요청 시간 초과',
      NetworkError.noInternet => '인터넷 연결이 없습니다',
      NetworkError.serverError => '서버 오류가 발생했습니다',
      NetworkError.unknown => '알 수 없는 오류가 발생했습니다',
    };
  }
}
