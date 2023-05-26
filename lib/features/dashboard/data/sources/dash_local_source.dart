import 'package:image_picker/image_picker.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/auth/models/entities/user.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';
import 'package:pentelligence/features/dashboard/models/entities/lobby.dart';

abstract class DashboardLocalSource {
  Future<void> cachAnalytics(Map<String, dynamic> anltcs);
  Future<void> cachStory(List<XFile> imageUls);
  Future<void> cachCourses(List<Course> courses);
  Future<void> cachCast(List<User> cast);
  Future<void> cachLobbies(List<Lobby> lobbies);
  Future<void> cachPendingCourse(CVersion cVCourse);
  Future<void> cachProfile(Profile profile);

  Future<Map<String, dynamic>> getAnalytics();
  Future<List<XFile>> getStory();
  Future<List<Course>> getCourses();
  Future<List<User>> getCast();
  Future<List<Lobby>> getLobbies();
  Future<CVersion> getPendingCourse();
  Future<Profile> getProfile();
}

class DashboardLoclaSourceImpl implements DashboardLocalSource {
  @override
  Future<void> cachAnalytics(Map<String, dynamic> anltcs) {
    // TODO: implement cachAnalytics
    throw UnimplementedError();
  }

  @override
  Future<void> cachCast(List<User> cast) {
    // TODO: implement cachCast
    throw UnimplementedError();
  }

  @override
  Future<void> cachCourses(List<Course> courses) {
    // TODO: implement cachCourses
    throw UnimplementedError();
  }

  @override
  Future<void> cachLobbies(List<Lobby> lobbies) {
    // TODO: implement cachLobbies
    throw UnimplementedError();
  }

  @override
  Future<void> cachPendingCourse(CVersion cVCourse) {
    // TODO: implement cachPendingCourse
    throw UnimplementedError();
  }

  @override
  Future<void> cachProfile(Profile profile) {
    // TODO: implement cachProfile
    throw UnimplementedError();
  }

  @override
  Future<void> cachStory(List<XFile> imageUls) {
    // TODO: implement cachStory
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getAnalytics() {
    // TODO: implement getAnalytics
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getCast() {
    // TODO: implement getCast
    throw UnimplementedError();
  }

  @override
  Future<List<Course>> getCourses() {
    // TODO: implement getCourses
    throw UnimplementedError();
  }

  @override
  Future<List<Lobby>> getLobbies() {
    // TODO: implement getLobbies
    throw UnimplementedError();
  }

  @override
  Future<CVersion> getPendingCourse() {
    // TODO: implement getPendingCourse
    throw UnimplementedError();
  }

  @override
  Future<Profile> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<List<XFile>> getStory() {
    // TODO: implement getStory
    throw UnimplementedError();
  }
}
