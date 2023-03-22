import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';

class GetAllPostsUsecase {
  final CourseService _courseService;
  GetAllPostsUsecase(this._courseService);
  Future<Either<Failure, List<Course>>> call() async {
    return await _courseService.getAllCourses();
  }
}
