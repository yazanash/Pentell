import 'package:pentelligence/features/course/models/entities/review.dart';

class ReviewModel extends Review {
  ReviewModel(
      {required super.Id,
      required super.rater,
      required super.value,
      required super.comment,});

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        Id: json['Id'],
        rater: json['rater'],
        value: json['value'],
        comment: json['comment'],);
  }

  Map<String, dynamic> toMap(Review review) {
    return {
      'Id':review.Id,
      'rater':review.rater,
      'value':review.value,
      'comment':review.comment,
    };
  }
}
