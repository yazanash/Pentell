import 'package:pentelligence/features/course/models/entities/rate.dart';

class RateModel extends Rate {
  RateModel(
      {required super.Id,
      required super.rater,
      required super.value,
      required super.comment,
      required super.user_id});

  factory RateModel.fromJson(Map<String, dynamic> json) {
    return RateModel(
        Id: json['Id'],
        rater: json['rater'],
        value: json['value'],
        comment: json['comment'],
        user_id: json['user_id']);
  }

  Map<String, dynamic> toMap(Rate rate) {
    return {
      'Id':rate.Id,
      'rater':rate.rater,
      'value':rate.value,
      'comment':rate.comment,
      'user_id':rate.user_id,
    };
  }
}
