import 'package:bible/features/login/data/request/request.dart';
import 'package:bible/features/login/domain/repositories/repository.dart';
import 'package:bible/features/login/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRepository extends Mock implements Repository {}


void main() {
  LoginUseCase? loginUseCase;
  Repository? repository;

  setUp(() {
    repository = MockRepository();
    loginUseCase = LoginUseCase(repository!);
  });

  final loginRequest = LoginRequest('wladimir@gmail.com', '123456');
  
  test('should get LoginUseCaseInput entity from repository email and password', () async {
    when(repository!.login(loginRequest))
        .thenAnswer((_) async => Right(loginUseCase));
  });
}
