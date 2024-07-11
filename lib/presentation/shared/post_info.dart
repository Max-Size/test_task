import 'package:flutter/material.dart';
import 'package:posts/config/text_styles.dart';
import 'package:posts/data/remote/entities/post.dart';

class PostInfo extends StatelessWidget {
  final Post post;

  const PostInfo({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          post.title,
          style: TextStyles.title,
        ),
        Image.asset('assets/images/hqdefault.jpg'),
        const SizedBox(
          height: 20,
        ),
        Text(
          post.body,
          style: TextStyles.normal,
        ),
      ],
    );
  }
}
