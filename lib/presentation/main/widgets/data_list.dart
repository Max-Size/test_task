import 'package:flutter/material.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/presentation/main/widgets/post.dart';

class PostsList extends StatelessWidget {
  final List<Post> posts;

  const PostsList({
    super.key,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      itemBuilder: (context, index) =>
          PostWidget(post: posts[index],),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: posts.length,
    );
  }
}
