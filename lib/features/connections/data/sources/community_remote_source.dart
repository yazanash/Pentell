import 'package:pentelligence/features/auth/models/entities/profile.dart';

abstract class CommunityRemoteSource{
  Future<void> follow(Profile profile);
  Future<void> addCloseFriend(Profile profile);
  Future<void> addFamilyMember(Profile profile);
  Future<void> unFollow(Profile profile);
  Future<void> mute(Profile profile);
  // Future<void> personalRate();
}

class CommunityRemoteSourceImpl implements CommunityRemoteSource{
  @override
  Future<void> addCloseFriend(Profile profile) {
    // TODO: implement addCloseFriend
    throw UnimplementedError();
  }

  @override
  Future<void> addFamilyMember(Profile profile) {
    // TODO: implement addFamilyMember
    throw UnimplementedError();
  }

  @override
  Future<void> follow(Profile profile) {
    // TODO: implement follow
    throw UnimplementedError();
  }

  @override
  Future<void> mute(Profile profile) {
    // TODO: implement mute
    throw UnimplementedError();
  }

  @override
  Future<void> unFollow(Profile profile) {
    // TODO: implement unFollow
    throw UnimplementedError();
  }
}