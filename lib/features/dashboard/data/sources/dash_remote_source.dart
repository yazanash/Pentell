import 'package:image_picker/image_picker.dart';
import 'package:pentelligence/features/dashboard/data/models/message_model.dart';
import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';
import 'package:pentelligence/features/dashboard/models/entities/story.dart';

abstract class DashboardRemoteSource {
  Future<List<MessageModel>> getAllMessages(String lobbyUrl);
  Future<List<Lobby>> getAllLobbies();
  Future<Map<String, List<Story>>> getAllStories();
  Future<void> broadcastMessage(
      List<String> lobbiesIds, MessageModel messageModel);
  Future<void> deleteStory(String id, {bool isAll = false});
  Future<List<String>> publishStory(List<XFile> images);
  Future<void> inviteToCVersion(String userUrl, String cversionUrl);
  Future<void> publishMessage(String lobbyId, MessageModel messageModel);
  Future<Map<String, dynamic>> getAnalytics();
}

class DashboardRemoteSourceImpl implements DashboardRemoteSource {
  @override
  Future<void> broadcastMessage(
      List<String> lobbiesIds, MessageModel messageModel) {
    // TODO: implement broadcastMessage
    throw UnimplementedError();
  }

  @override
  Future<void> deleteStory(String id, {bool isAll = false}) {
    // TODO: implement deleteStory
    throw UnimplementedError();
  }

  @override
  Future<List<Lobby>> getAllLobbies() {
    // TODO: implement getAllLobbies
    throw UnimplementedError();
  }

  @override
  Future<List<MessageModel>> getAllMessages(String lobbyUrl) {
    // TODO: implement getAllMessages
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<Story>>> getAllStories() {
    // TODO: implement getAllStories
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getAnalytics() {
    // TODO: implement getAnalytics
    throw UnimplementedError();
  }

  @override
  Future<void> inviteToCVersion(String userUrl, String cversionUrl) {
    // TODO: implement inviteToCVersion
    throw UnimplementedError();
  }

  @override
  Future<void> publishMessage(String lobbyId, MessageModel messageModel) {
    // TODO: implement publishMessage
    throw UnimplementedError();
  }

  @override
  Future<List<String>> publishStory(List<XFile> images) {
    // TODO: implement publishStory
    throw UnimplementedError();
  }
}
