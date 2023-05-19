
import 'package:pentelligence/features/dashboard/models/entities/poll_option.dart';

class PollOptionModel extends PollOption {
  PollOptionModel({
    required super.id,
    required super.selectedCount,
    required super.title
  });


 factory PollOptionModel.fromJson(Map<String, dynamic> json) {
    return PollOptionModel(
      title: json["title"],
      selectedCount: json["selectedCount"],
         id: json["id"],
    );
  }

  Map<String, dynamic> toMap(PollOption pollOption) {
    return {
       "title": pollOption.title,
      "selectedCount": pollOption.selectedCount,
        "id": pollOption.id,
    };
  }


}
