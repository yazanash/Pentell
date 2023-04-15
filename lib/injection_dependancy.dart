import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pentelligence/core/backend/network_info.dart';
import 'package:pentelligence/features/auth/data/services/auth_service_impl.dart';
import 'package:pentelligence/features/auth/data/sources/auth_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/auth_remote_source.dart';
import 'package:pentelligence/features/auth/models/services/auth_service.dart';
import 'package:pentelligence/features/auth/models/usecases/auth_usecases.dart';
import 'package:pentelligence/features/course/data/services/course_service_impl.dart';
import 'package:pentelligence/features/course/data/sources/course_local_source.dart';
import 'package:pentelligence/features/course/data/sources/course_remote_source.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';
import 'package:pentelligence/features/course/models/usecases/courses_usercase.dart';

GetIt sl = GetIt.instance;
late final Box<Map<String, dynamic>> userBox;

Future<void> init() async {
  //  Database
  await Hive.initFlutter();
  userBox = await Hive.openBox<Map<String, dynamic>>('user');

  //  core
  sl.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
  sl.registerSingleton<NetworkInfo>(NetworkInfoImpl(sl()));

  //  sources
  sl.registerSingleton<AuthLocalSource>(AuthLocalSourceImpl(userBox));
  sl.registerSingleton<AuthRemoteSource>(
    AuthRemoteSourceImpl(localSource: sl()),
  );
  sl.registerSingleton<PostLocalSource>(PostLocalSourceImpl());
  sl.registerSingleton<PostRemoteSource>(PostRemoteSourceImpl());

  //  services
  sl.registerSingleton<AuthService>(AuthServiceImple(sl(), sl(), sl()));
  sl.registerSingleton<CourseService>(CourseServiceImpl(sl(), sl(), sl()));

  //  usecases
  sl.registerSingleton<AuthUsecases>(AuthUsecases());
  sl.registerSingleton<CoursesUsecases>(CoursesUsecases(sl()));
}
