import 'package:flutter/material.dart';
import 'package:posts/config/text_styles.dart';
import 'package:posts/data/remote/entities/comment.dart';
import 'package:posts/presentation/details/widgets/comment.dart';

class CommentsList extends StatelessWidget {
  final List<Comment> comments;

  const CommentsList({
    super.key,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(slivers: [
      const SliverToBoxAdapter(
        child: Text(
          'Comments',
          style: TextStyles.title,
        ),
      ),
      SliverList.separated(
        itemBuilder: (_, index) => CommentWidget(comment: comments[index]),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: comments.length,
      ),
    ]);
  }
}
