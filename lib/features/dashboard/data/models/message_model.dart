
import 'package:pentelligence/features/dashboard/models/entities/message.dart';

class MessageModel extends Message {
  MessageModel({
    required super.title,
    required super.content,
    required super.pollOptions
  });


 factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      title: json["title"],
      content: json["content"],
         pollOptions: json["pollOptions"],
    );
  }

  Map<String, dynamic> toMap(Message message) {
    return {
       "title": message.title,
      "content": message.content,
        "pollOptions": message.pollOptions,
    };
  }


}
