import 'package:cleanarchitecture_v2/core/domain/error/error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<D, E extends ErrorHandler> with _$Result<D, E> {
  const factory Result.success(D data) = ResultSuccess;
  const factory Result.error(E error) = ResultError;
}
