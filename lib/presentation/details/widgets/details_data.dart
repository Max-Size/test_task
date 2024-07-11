import 'package:flutter/material.dart';
import 'package:posts/data/remote/entities/comment.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/presentation/details/widgets/comments.dart';
import 'package:posts/presentation/details/widgets/post.dart';

class DetailsDataWidget extends StatelessWidget {
  final Post post;
  final List<Comment> comments;

  const DetailsDataWidget({
    super.key,
    required this.post,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: CustomScrollView(
        slivers: [
          PostSliverInfo(post: post),
          CommentsList(comments: comments),
        ],
      ),
    );
  }
}
