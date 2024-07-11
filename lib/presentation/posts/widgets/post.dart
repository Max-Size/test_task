import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/presentation/details/bloc/post_details_bloc.dart';
import 'package:posts/presentation/details/screen.dart';
import 'package:posts/presentation/shared/post_info.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                PostDetailsBloc()..add(GetPostDetails(post: post)),
            child: const PostDetailsScreen(),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: PostInfo(post: post),
      ),
    );
  }
}
