import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/features/auth/data/services/auth_service_impl.dart';
import 'package:pentelligence/features/auth/data/sources/auth_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/auth_remote_source.dart';
import 'package:pentelligence/features/auth/models/usecases/request_verification.dart';
import 'package:pentelligence/features/auth/models/usecases/verify_code_and_login.dart';
import 'package:pentelligence/features/posts/data/services/course_service_impl.dart';
import 'package:pentelligence/features/posts/models/usecases/courses_usecases/get_all_courses.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //  Database
  await Hive.initFlutter();
  final userBox = await Hive.openBox<Map<String, dynamic>>('user');

  //  core
  sl.registerSingleton(() => InternetConnectionChecker());
  sl.registerSingleton(() => NetworkInfoImpl(sl()));

  //  sources

  sl.registerSingleton(() => UserRemoteSourceImpl());
  sl.registerSingleton(() => UserLocalSourceImpl(userBox));

  //  services

  sl.registerSingleton(() => UserServiceImple(sl(), sl(), sl()));
  sl.registerSingleton(() => CourseServiceImpl(sl(), sl(), sl()));

  //  usecases

  sl.registerSingleton(() => RequestVerificationUsecase(sl()));
  sl.registerSingleton(() => VerifyCodeAndLogin(sl()));
  sl.registerSingleton(() => GetAllPostsUsecase(sl()));
}
