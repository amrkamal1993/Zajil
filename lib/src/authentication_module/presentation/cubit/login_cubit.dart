import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_state.dart';

@injectable
class LoginUserCubit extends Cubit<LoginUserState> {
  LoginUserCubit(this._loginUserUseCase)
      : super(const LoginUserState.initial());

  final LoginUserUseCase _loginUserUseCase;


  bool get isButtonEnabled => (userName?.isNotEmpty == true && password?.isNotEmpty == true);

  String? _userName;

  String? get userName => _userName;

  setUserName(String? userName) {
    _userName = userName;
    emit(LoginUserState.onUserNameTextChanged(userName));
  }

  String? _password;

  String? get password => _password;

  setPassword(String? password) {
    _password = password;
    emit(LoginUserState.onPasswordChanged(password));
  }



  loginUser() async {
    emit(const LoginUserState.loading());
    final result = await _loginUserUseCase.call(LoginModel(
        userName: userName ?? "", password: password ?? ""));
    emit(result.fold((l) => LoginUserState.error(l),
            (r) => LoginUserState.onLoginSuccess(r)));
  }
}
