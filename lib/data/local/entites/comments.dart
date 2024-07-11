import 'package:json_annotation/json_annotation.dart';
import 'package:posts/data/remote/entities/comment.dart';

part 'comments.g.dart';

@JsonSerializable(explicitToJson: true)
class Comments {
  final List<Comment> comments;

  Comments({
    required this.comments,
  });

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);

  Map<String, dynamic> toJson() => _$CommentsToJson(this);
}
