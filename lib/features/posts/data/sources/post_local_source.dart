import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/posts/models/entities/post.dart';

abstract class PostLocalSource {
  Future<List<Post>> getAllPosts();
}

class PostLocalSourceImpl implements PostLocalSource {
  @override
  Future<List<Post>> getAllPosts()async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

}
