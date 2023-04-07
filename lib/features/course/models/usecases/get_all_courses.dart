import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';

class GetAllCoursesUsecase {
  final CourseService _courseService;
  GetAllCoursesUsecase(this._courseService);
  Future<Either<Failure, List<Course>>> call() async {
    return await _courseService.getAllCourses();
  }
}
