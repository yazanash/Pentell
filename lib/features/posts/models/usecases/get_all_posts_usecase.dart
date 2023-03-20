import 'package:pentelligence/features/posts/models/entities/post.dart';
import 'package:pentelligence/features/posts/models/services/post_service.dart';

class GetAllPostsUsecase {
  final PostService _postService;
  GetAllPostsUsecase(this._postService);
  // Future<Either<Failure, List<Post>>> call() async {
  //   return await _postService.getAllPosts();
  // }
}
