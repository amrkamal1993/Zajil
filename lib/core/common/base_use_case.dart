import 'package:dartz/dartz.dart';
import 'package:zajil/core/networking/exceptions/app_exception.dart';

abstract class BaseUseCase<Output, Params> {
  Future<Either<AppException, Output>> call(Params params);
}

class NoParam{}