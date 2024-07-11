import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:posts/data/local/entites/comments.dart';

class CommentsCoverter extends TypeConverter<Comments, String>{
  const CommentsCoverter();

  @override
  Comments fromSql(String fromDb) {
    return Comments.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(Comments value) {
    return jsonEncode(value.toJson());
  }
}