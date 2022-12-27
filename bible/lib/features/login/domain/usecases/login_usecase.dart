import 'package:bible/core/usecase/errors/failures.dart';

import 'package:bible/features/login/data/request/request.dart';
import 'package:bible/features/login/domain/entities/model.dart';
import 'package:bible/features/login/domain/repositories/repository.dart';
import 'package:bible/core/usecase/base_usecase.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  Repository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
   // DeviceInfo deviceInfo = await getDeviceDetails();
    return await repository.login(LoginRequest(
        input.email, input.password)); //, deviceInfo.identifier, deviceInfo.name
  }
}

class LoginUseCaseInput extends Equatable{
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);

  @override
  List<Object?> get props => [
    email,
    password
  ];
}
