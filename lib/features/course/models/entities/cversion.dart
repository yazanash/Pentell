import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';

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
  final double price;
  final bool hasoffer;
  final String offer;
  final double new_price;
  final int maxof;
  final int minof;
  
  CVersion(
      {required this.version_id,
      required this.teacher,
      required this.ratings,
      required this.tags,
      required this.course_id,
      required this.maxch,
      required this.minch,
      required this.joined,
      required this.lobby,
      required this.price,
      required this.hasoffer,
      required this.offer,
      required this.new_price,
      required this.maxof,
      required this.minof,
      });
}
