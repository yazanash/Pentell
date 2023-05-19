import 'package:pentelligence/core/utilities/review_tile.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';
import 'package:pentelligence/features/course/models/entities/sessions.dart';

import '../../../auth/models/entities/user_profile.dart';

class CVersion {
  final String? version_id;
  final String label;
  final List<Profile>? casts;
  final String course_id;
  final List<Review>? ratings;
  final List<Session>? path;
  final int lobby;
  final int maxch;
  final int minch;
  final List<Profile>? joined;
  final double price;
  final bool hasoffer;
  final String? offer;
  final double? new_price;
  final int maxof;
  final int minof;
  final DateTime publish;
  final bool period;
  final DateTime from, to;
   final int hoursCount;
  CVersion({
    this.version_id,
    required this.label,
    required this.casts,
    required this.path,
    this.ratings,
    required this.publish,
    required this.course_id,
    required this.maxch,
    required this.minch,
    required this.joined,
    required this.lobby,
    required this.price,
    required this.hasoffer,
    required this.from,
    required this.to,
    required this.period,
    required this.hoursCount,
    this.offer,
    this.new_price,
    required this.maxof,
    required this.minof,
  });
}
