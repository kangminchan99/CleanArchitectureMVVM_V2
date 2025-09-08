import 'package:cleanarchitecture_v2/core/domain/error/error.dart';

enum BookmarkError implements ErrorHandler {
  notFound,
  saveFailed,
  unknown;

  @override
  String toString() => switch (this) {
    notFound => '레시피를 찾을 수 없습니다',
    saveFailed => '북마크 저장 실패',
    unknown => '알 수 없는 오류가 발생했습니다',
  };
}
