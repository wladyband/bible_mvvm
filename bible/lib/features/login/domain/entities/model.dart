// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Authentication extends Equatable {
  String? id;
  String? name;
  String? phone;
  String? email;

  Authentication(this.id, this.name, this.email, this.phone);

  @override
  List<Object?> get props => [id, name, email, phone];
}

class DeviceInfo {
  String name;
  String identifier;
  String version;

  DeviceInfo(this.name, this.identifier, this.version);
}

class Service {
  int id;
  String title;
  String image;

  Service(this.id, this.title, this.image);
}
