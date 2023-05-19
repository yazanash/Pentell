import 'package:equatable/equatable.dart';

class Message extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  final String title;
  final String content;
  final List<Object> pollOptions;

  Message({
    required this.title,
    required this.content,
    required this.pollOptions
  });

}
