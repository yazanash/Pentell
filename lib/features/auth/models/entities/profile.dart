import 'package:pentelligence/features/auth/models/entities/user.dart';

class Profile {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;

  Profile(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.address});
}
