import 'package:equatable/equatable.dart';

class PollModel extends Equatable {
  final int? id;
  final String userId;
  final Map<int, String> options;
  final Map<int, List<String>> userSelection;

  late final int? selectedOption;

  PollModel({
    this.id,
    required this.userId,
    required this.options,
    required this.userSelection,
  }) {
    userSelection.forEach(
      (key, value) {
        for (var element in value) {
          if (userId == element) {
            selectedOption = key;
          }
        }
      },
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
