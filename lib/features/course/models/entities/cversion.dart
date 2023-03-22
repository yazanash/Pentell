import 'package:pentelligence/features/auth/models/entities/profile.dart';

import '../../../auth/models/entities/user_profile.dart';

class CVersion {
  final int version_id;
  final Profile teacher;
  final String course_id;
  final List<Object> ratings;
  final List<Object> tags;
  final int lobby;
  final int maxch;
  final int minch;
  final int joined;
  final Object category;

  CVersion(
      {required this.version_id,
      required this.teacher,
      required this.ratings,
      required this.tags,
      required this.category,
      required this.course_id,
      required this.maxch,
      required this.minch,
      required this.joined,
      required this.lobby});
}
