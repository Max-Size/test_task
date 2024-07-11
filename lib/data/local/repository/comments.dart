import 'package:posts/config/service_locator.dart';
import 'package:posts/data/local/db/db.dart';
import 'package:posts/data/local/entites/comments.dart';
import 'package:posts/data/remote/entities/comment.dart';

class LocalCommentsRepository {
  final _db = ServiceLocator.db;

  Future<PostsComment?> getSavedCommentsForPost(int postId) {
    final res = _db.managers.postsComments
        .filter((f) => f.postId(postId))
        .getSingleOrNull();
    return res;
  }

  Future<void> saveCommentsForPost(List<Comment> comments) async {
    await _db.managers.postsComments.create(
      (o) => o(
        comments: Comments(comments: comments),
        postId: comments[0].postId,
      ),
    );
  }
}
