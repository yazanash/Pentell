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
      required this.userType});

  @override
  
  List<Object?> get props => [id, name, email];

  final int id;
  final String name;
  final String email;
  final String phoneNumber;
  final String token;
  final String imageUrl;
  final String isVerified;
  final UserType userType;

 
}
