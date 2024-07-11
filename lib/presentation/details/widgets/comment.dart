import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/config/text_styles.dart';
import 'package:posts/data/remote/entities/comment.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          comment.name,
          style: TextStyles.subtitle,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Email: ${comment.email}',
          style: TextStyles.normal,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          comment.body,
          style: TextStyles.normal,
        ),
      ],
    );
  }
}
