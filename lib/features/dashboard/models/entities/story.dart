import 'package:equatable/equatable.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';

class Story extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  final Profile publisher;
  final String imageurl;
  final int seens;
  Story({
    required this.publisher,
    required this.imageurl,
    required this.seens
  });
}
