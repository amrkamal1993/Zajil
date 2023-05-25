import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zajil/core/networking/exceptions/app_exception.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginUserState with _$LoginUserState {
  const factory LoginUserState.initial() = _Initial;

  const factory LoginUserState.error(AppException error) = _Error;

  const factory LoginUserState.onUserNameTextChanged(String? username) = _onUserNameTextChanged;

  const factory LoginUserState.onPasswordChanged(String? password) = _onPasswordChanged;

  const factory LoginUserState.loading() = _Loading;

  const factory LoginUserState.onLoginSuccess() =
  _onLoginSuccess;
}
