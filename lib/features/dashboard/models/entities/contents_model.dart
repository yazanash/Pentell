import 'package:equatable/equatable.dart';

class ContentsModel extends Equatable {
  int? id;
  String title;
  List<String> subTitles;
  ContentsModel(this.title, {this.subTitles = const []});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
