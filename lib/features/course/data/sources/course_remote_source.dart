import 'package:pentelligence/features/course/models/entities/course.dart';

abstract class PostRemoteSource {
  Future<List<Course>> getAllPosts();
}

class PostRemoteSourceImpl implements PostRemoteSource {
  @override
  Future<List<Course>> getAllPosts()async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }
}
