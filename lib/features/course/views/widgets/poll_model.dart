import 'dart:convert';

import 'package:equatable/equatable.dart';

class PollModel extends Equatable {
  final int? id;
  final String userId;
  final Map<int, String> options;
  final Map<int, List<String>> userSelection;

  int? selectedOption;
  int total = 0;
  double? votePercent(int optionIndex) {
    if (total > 0 && userSelection.isNotEmpty) {
      return userSelection[optionIndex]!.length / 5;
    }
  }

  PollModel({
    this.id,
    required this.userId,
    required this.options,
    required this.userSelection,
  }) {
    for (var i in userSelection.values) {
      total += i.length;
    }
    userSelection.forEach(
      (optionIndex, userList) {
        for (var votedUser in userList) {
          if (userId == votedUser) {
            selectedOption = optionIndex;
            return;
          }
        }
      },
    );
    selectedOption = null;
  }

  factory PollModel.fromJson(Map<String, dynamic> json) {
    return PollModel(
      id: json['id'],
      userId: json['userId'],
      options: jsonDecode(json['options']),
      userSelection: jsonDecode(json['userSelection']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'options': options,
      'userSelection': selectedOption,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
