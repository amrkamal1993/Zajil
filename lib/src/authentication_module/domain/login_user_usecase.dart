import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:zajil/core/common/base_use_case.dart';
import 'package:zajil/core/networking/exceptions/app_exception.dart';
import 'package:zajil/src/authentication_module/data/models/login_model.dart';

@injectable
class LoginUserUseCase extends BaseUseCase<bool, LoginModel> {

  @override
  Future<Either<AppException, bool>> call(LoginModel params) async {
    return right(true);
  }
}