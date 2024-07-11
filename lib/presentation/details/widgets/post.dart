import 'package:flutter/material.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/presentation/shared/post_info.dart';

class PostSliverInfo extends StatelessWidget {
  final Post post;

  const PostSliverInfo({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: PostInfo(post: post),
    );
  }
}
