
import 'package:bible/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}