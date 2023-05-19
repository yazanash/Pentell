import 'package:equatable/equatable.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';

import 'cversion.dart';

class Course extends Equatable {
  final String id;
  final String name;
  final String provider;
  final List<int> activeVersions;
  final List<CVersion> cversions;
  final String bio;
  final List<Category> categories;

  Course({
    required this.id,
    required this.name,
    required this.provider,
    required this.cversions,
    required this.bio,
    required this.categories,
    required this.activeVersions,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
