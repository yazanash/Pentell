import 'package:pentelligence/features/course/models/entities/sessions.dart';

class SessionModel extends Session{
  SessionModel({
    required super.id, 
    required super.title, 
    required super.content, 
    required super.hourse,
    required super.date, 
    required super.location});

  factory SessionModel.fromJson(Map<String, dynamic> json) {
    return SessionModel(
      id: json["id"],
      title:json["title"],
      content:json["content"],
      hourse:json["hourse"],
      date:json["date"],
      location:json["location"],
      );

  }

  Map<String, dynamic> toMap(Session session) {
    return {
      "id":session.id,
      "title":session.title,
      "content":session.content,
      "hourse":session.hourse,
      "date":session.date,
      "location":session.location,
    };
  }
}