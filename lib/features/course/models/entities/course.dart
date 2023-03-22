import 'package:pentelligence/features/auth/models/entities/profile.dart';

import 'cversion.dart';

class Course {
  final String id;
  final String name;
  final String provider;
  final Profile teacher;
  final int current_version;
  final List<CVersion> cversions;
  final List<Object> tags;
  final Object category;

  Course(
      {
        required this.id,
        required this.name,
        required this.provider,
        required this.teacher,
        required this.cversions,
        required this.tags,
        required this.category,
        required this.current_version
      });
}
