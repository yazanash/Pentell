import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';

class LobbyModel extends Lobby {
  LobbyModel({
    required super.cversion_id,
    required super.messages
  });


 factory LobbyModel.fromJson(Map<String, dynamic> json) {
    return LobbyModel(
      cversion_id: json["cversion_id"],
      messages: json["messages"],
    );
  }

  Map<String, dynamic> toMap(Lobby lobby) {
    return {
       "cversion_id": lobby.cversion_id,
      "messages": lobby.messages,
    };
  }


}
