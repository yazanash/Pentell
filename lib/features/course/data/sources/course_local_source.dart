import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';

abstract class PostLocalSource {
  Future<List<Course>> getAllPosts();
}

class PostLocalSourceImpl implements PostLocalSource {
  @override
  Future<List<Course>> getAllPosts()async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

}
