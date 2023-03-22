import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/features/auth/data/services/user_service_impl.dart';
import 'package:pentelligence/features/auth/data/sources/user_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/user_remote_source.dart';
import 'package:pentelligence/features/auth/models/usecases/request_verification.dart';
import 'package:pentelligence/features/auth/models/usecases/verify_code_and_login.dart';
import 'package:pentelligence/features/posts/data/services/post_service_impl.dart';
import 'package:pentelligence/features/posts/models/usecases/get_all_posts_usecase.dart';

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
  sl.registerSingleton(() => PostServiceImpl(sl(), sl(), sl()));

  //  usecases

  sl.registerSingleton(() => RequestVerificationUsecase(sl()));
  sl.registerSingleton(() => VerifyCodeAndLogin(sl()));
  sl.registerSingleton(() => GetAllPostsUsecase(sl()));
}
