import 'package:bible/core/usecase/errors/failures.dart';
import 'package:bible/features/login/data/request/request.dart';
import 'package:bible/features/login/domain/entities/model.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}