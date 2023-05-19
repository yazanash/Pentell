import 'package:equatable/equatable.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';
import 'package:pentelligence/features/dashboard/models/entities/message.dart';

class Lobby extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  final String cversion_id;
  final List<Message> messages;
  Lobby({
    required this.cversion_id,
    required this.messages
  });
}
