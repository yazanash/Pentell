import 'package:equatable/equatable.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';

import 'cversion.dart';

class Course extends Equatable {
  final String id;
  final String name;
  final String provider;
  final List<int> currentVersions;
  final List<CVersion> cversions;
  final List<String> tags;
  final Category category;

  bool isJoined;

  Course({
    required this.id,
    required this.name,
    required this.provider,
    required this.cversions,
    required this.tags,
    required this.category,
    required this.currentVersions,
    this.isJoined = false,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
