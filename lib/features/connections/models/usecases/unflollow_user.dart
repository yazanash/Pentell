import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/connections/models/services/community_service.dart';

class UnFollowUser {
  final CommunityService communityService;
  UnFollowUser(this.communityService);
  Future<Either<Failure, Unit>> call() async {
    return await communityService.unFollow();
  }
}
