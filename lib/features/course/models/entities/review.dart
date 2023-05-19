import 'package:pentelligence/features/auth/models/entities/profile.dart';

class Review {
  final int Id;
  final Profile rater;
  final int value;
  final String comment;

  Review({
  required this.Id, 
  required this.rater, 
  required this.value, 
  required this.comment,});
}
