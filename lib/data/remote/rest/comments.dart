import 'package:dio/dio.dart';
import 'package:posts/data/remote/entities/comment.dart';
import 'package:retrofit/retrofit.dart';

part 'comments.g.dart';

@RestApi()
abstract class CommentsClient {
  factory CommentsClient(Dio dio, {String baseUrl}) = _CommentsClient;

  @GET('/comments')
  Future<List<Comment>> getCommentsForPost(@Query('postId') int postId,);
}
