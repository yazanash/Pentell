import 'package:pentelligence/features/posts/models/entities/post.dart';

abstract class PostRemoteSource {
  Future<List<Post>> getAllPosts();
}

class PostRemoteSourceImpl implements PostRemoteSource {
  @override
  Future<List<Post>> getAllPosts()async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }
}
