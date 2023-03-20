import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/posts/data/sources/post_local_source.dart';
import 'package:pentelligence/features/posts/data/sources/post_remote_source.dart';
import 'package:pentelligence/features/posts/models/entities/post.dart';
import 'package:pentelligence/features/posts/models/services/post_service.dart';

class PostServiceImpl extends PostService {
  final PostLocalSource localSource;
  final PostRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  PostServiceImpl(this.localSource,this.remoteSource,this.networkInfo);

  @override
  Future<Either<Failure, List<Post>>> getAllPosts() async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

}
