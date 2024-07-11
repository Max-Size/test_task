import 'package:posts/data/remote/dio.dart';
import 'package:posts/data/remote/entities/comment.dart';
import 'package:posts/data/remote/rest/comments.dart';

class CommentsRepository {
  final _commentsClient = CommentsClient(Network.dio);

  Future<List<Comment>> getCommentsForPost(int postId) => _commentsClient.getCommentsForPost(postId);
}