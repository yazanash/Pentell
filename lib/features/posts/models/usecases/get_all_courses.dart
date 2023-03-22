import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/posts/models/entities/post.dart';
import 'package:pentelligence/features/posts/models/services/course_service.dart';

class GetAllPostsUsecase {
  final CourseService _courseService;
  GetAllPostsUsecase(this._courseService);
  Future<Either<Failure, List<Post>>> call() async {
    return await _courseService.getAllCourses();
  }
}
