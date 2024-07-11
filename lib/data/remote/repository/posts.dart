import 'package:posts/data/remote/dio.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/data/remote/rest/posts.dart';

class PostsRepository {
  final _postsClient = PostsClient(Network.dio);

  Future<List<Post>> getAllPosts() => _postsClient.getAllPosts();
}
