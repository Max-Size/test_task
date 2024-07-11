import 'package:dio/dio.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:retrofit/retrofit.dart';

part 'posts.g.dart';

@RestApi()
abstract class PostsClient {
  factory PostsClient(Dio dio, {String baseUrl}) = _PostsClient;

  @GET('/posts')
  Future<List<Post>> getAllPosts();
}