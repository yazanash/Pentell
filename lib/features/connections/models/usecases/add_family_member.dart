import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/connections/models/services/community_service.dart';

class AddFamilyMember {
  final CommunityService communityService;
  AddFamilyMember(this.communityService);
  Future<Either<Failure, Unit>> call() async {
    return await communityService.addFamilyMember();
  }
}
