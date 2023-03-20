import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/posts/models/entities/post.dart';

abstract class PostService {
  // Contains all usecases as functions...

  Future<Either<Failure, List<Post>>> getAllPosts();
}
