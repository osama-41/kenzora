import 'package:freezed_annotation/freezed_annotation.dart';
part 'logic_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial<T>;
  const factory LoginState.loading() = Loading<T>;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error({required String error}) = Error;
}
