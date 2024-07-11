import 'package:drift/drift.dart';
import 'package:posts/data/local/db/converters/comments.dart';

class PostsComments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get postId => integer()();
  TextColumn get comments => text().map(const CommentsCoverter())();
}