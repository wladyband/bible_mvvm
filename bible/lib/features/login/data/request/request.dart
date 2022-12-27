import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  String email;
  String password;
  // String imei;
  // String deviceType;

  LoginRequest(this.email, this.password);

  @override
  // TODO: implement props
  List<Object?> get props => [
    email,
    password
  ]; //this.imei, this.deviceType
}

class RegisterRequest {
  String countryMobileCode;
  String userName;
  String email;
  String password;
  String profilePicture;
  String mobileNumber;

  RegisterRequest(this.countryMobileCode, this.userName, this.email,
      this.password, this.profilePicture,this.mobileNumber);
}