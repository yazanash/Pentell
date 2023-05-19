import 'package:equatable/equatable.dart';

class PollOption extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  final int id;
  final String title;
  final int selectedCount;

  PollOption({
    required this.id,
    required this.title,
    required this.selectedCount,
  });
}
