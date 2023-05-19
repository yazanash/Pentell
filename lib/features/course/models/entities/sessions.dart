import 'package:equatable/equatable.dart';

class Session extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  final int id;
  final String title;
  final String content;
  final int hourse;
  final DateTime date;
  final String location;

  Session({
      required this.id,
    required this.title,
    required this.content,
    required this.hourse,
    required this.date,
    required this.location,
  });
}
