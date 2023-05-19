import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';
import 'package:pentelligence/features/dashboard/models/entities/message.dart';
import 'package:pentelligence/features/dashboard/models/entities/story.dart';

abstract class DashboardService {
  Future<Either<Failure, List<Lobby>>> getAllLobbies();
  Future<Either<Failure, List<Message>>> getAllMessages();
  Future<Either<Failure, List<Story>>> getAllStoris();
  Future<Either<Failure, Unit>> getAnalytics();
  Future<Either<Failure, Unit>> puplishStory(List<String> imagesUrl);
  Future<Either<Failure, Unit>> deleteStory(List<int> storyId);
  Future<Either<Failure, Unit>> puplishMessage(int lobbyId, Message message);
  Future<Either<Failure, Unit>> broudcastMessage(List<String> lobbyIds);
  Future<Either<Failure, Unit>> inviteToLobby();
}
