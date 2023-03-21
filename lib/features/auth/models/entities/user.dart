import 'package:equatable/equatable.dart';
import 'package:pentelligence/core/constant/constant.dart';

class User extends Equatable {
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.token,
      required this.imageUrl,
      required this.isVerified,
      required this.userType,
      required this.Courses,
      required this.Channel});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, email, token];

  final int id;
  final String name;
  final String email;
  final String phoneNumber;
  final String token;
  final String imageUrl;
  final String isVerified;
  final UserType userType;
  List<Object> Courses;
  List<Object> Channel;

  List<Object> get getList {
    return Channel;
  }

  set setList(List<Object> value) {
    Channel = value;
  }
}
