import 'package:pentelligence/features/dashboard/models/entities/story.dart';
import 'package:pentelligence/features/dashboard/models/entities/message.dart';
import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/dashboard/models/services/dashboard_service.dart';

class DashboardServiceImpl implements DashboardService{
  @override
  Future<Either<Failure, Unit>> broudcastMessage(List<String> lobbyIds) {
    // TODO: implement broudcastMessage
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteStory(List<int> storyId) {
    // TODO: implement deleteStory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Lobby>>> getAllLobbies() {
    // TODO: implement getAllLobbies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Message>>> getAllMessages() {
    // TODO: implement getAllMessages
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Story>>> getAllStoris() {
    // TODO: implement getAllStoris
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> getAnalytics() {
    // TODO: implement getAnalytics
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> inviteToLobby() {
    // TODO: implement inviteToLobby
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> puplishMessage(int lobbyId, Message message) {
    // TODO: implement puplishMessage
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> puplishStory(List<String> imagesUrl) {
    // TODO: implement puplishStory
    throw UnimplementedError();
  }
  
}