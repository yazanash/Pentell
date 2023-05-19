import 'package:pentelligence/features/dashboard/models/entities/story.dart';
import 'package:pentelligence/features/dashboard/models/entities/message.dart';
import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/dashboard/models/services/dashboard_service.dart';

class DashboardUsecases {
  Future<Either<Failure, Unit>> broudcastMessage(List<String> lobbyIds) {
    // TODO: implement broudcastMessage
    throw UnimplementedError();
  }

  Future<Either<Failure, Unit>> deleteStory(List<int> storyId) {
    // TODO: implement deleteStory
    throw UnimplementedError();
  }

  Future<Either<Failure, List<Lobby>>> getAllLobbies() {
    // TODO: implement getAllLobbies
    throw UnimplementedError();
  }

  Future<Either<Failure, List<Message>>> getAllMessages() {
    // TODO: implement getAllMessages
    throw UnimplementedError();
  }

  Future<Either<Failure, List<Story>>> getAllStoris() {
    // TODO: implement getAllStoris
    throw UnimplementedError();
  }

  Future<Either<Failure, Unit>> getAnalytics() {
    // TODO: implement getAnalytics
    throw UnimplementedError();
  }

  Future<Either<Failure, Unit>> inviteToLobby() {
    // TODO: implement inviteToLobby
    throw UnimplementedError();
  }

  Future<Either<Failure, Unit>> puplishMessage(int lobbyId, Message message) {
    // TODO: implement puplishMessage
    throw UnimplementedError();
  }

  Future<Either<Failure, Unit>> puplishStory(List<String> imagesUrl) {
    // TODO: implement puplishStory
    throw UnimplementedError();
  }
}
