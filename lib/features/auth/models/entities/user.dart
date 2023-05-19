import 'package:equatable/equatable.dart';

class User extends Equatable {
  User({
    this.id,
    required this.email,
    this.phoneNumber,
    required this.token,
    required this.isVerified,
  });

  @override
  List<Object?> get props => [id, email];

  final int? id;
  final String email;
  final String? phoneNumber;
  final String token;
  final String isVerified;
}
