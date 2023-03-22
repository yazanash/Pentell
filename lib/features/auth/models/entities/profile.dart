import 'package:pentelligence/features/auth/models/entities/user.dart';

class Profile {
  final int id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final List<User> employee;
  final List<User> teachers;
  final List<Object> gallery;
  final List<User> nerds;
  List<Object>? roles;
  List<Object>? channel;

  Profile(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.address,
      required this.employee,
      required this.teachers,
      required this.gallery,
      required this.nerds});
}
