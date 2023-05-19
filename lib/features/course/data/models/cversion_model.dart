import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';

class CVersionModel extends CVersion {
  CVersionModel({
    super.version_id,
    required super.casts,
    required super.path,
    super.ratings,
    required super.course_id,
    required super.maxch,
    required super.minch,
    super.joined,
    required super.lobby,
    required super.price,
    required super.hasoffer,
    required super.publish,
    required super.from,
    required super.to,
    required super.period,
    required super.hoursCount,
    super.offer,
    super.new_price,
    required super.maxof,
    required super.minof,
    required super.label,
  });

  factory CVersionModel.fromJson(Map<String, dynamic> json) {
    return CVersionModel(
        version_id: json["version_id"],
        casts: json["casts"],
        ratings: json["ratings"],
        path: json["path"],
        course_id: json["course_id"],
        maxch: json["maxch"],
        minch: json["minch"],
        joined: json["joined"],
        publish: json["publish"],
        lobby: json["lobby"],
        price: json['price'],
        hasoffer: json['hasoffer'],
        offer: json['offer'],
        new_price: json['new_price'],
        maxof: json['maxof'],
        minof: json['minof'],
        label: json['label'],
        from: json["from"],
        to: json["to"],
        period: json["period"],
        hoursCount: json["hoursCount"]);
  }

  Map<String, dynamic> toMap(CVersion cversion) {
    return {
      "version_id": cversion.version_id,
      "casts": cversion.casts,
      "ratings": cversion.ratings,
      "path":cversion.path,
      "course_id": cversion.course_id,
      "maxch": cversion.maxch,
      "minch": cversion.minch,
      "joined": cversion.joined,
      "lobby": cversion.lobby,
      "price": cversion.price,
      "hasoffer": cversion.hasoffer,
      "offer": cversion.offer,
      "new_price": cversion.new_price,
      "maxof": cversion.maxof,
      "minof": cversion.minof,
      "from": cversion.from,
      "to": cversion.to,
      "period": cversion.period,
      "hoursCount": cversion.hoursCount
    };
  }
}
