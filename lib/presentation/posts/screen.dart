import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/presentation/posts/bloc/posts_bloc.dart';
import 'package:posts/presentation/posts/widgets/data_list.dart';
import 'package:posts/presentation/shared/error.dart';
import 'package:posts/presentation/posts/widgets/loading_list.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) => switch (state) {
          PostsLoading() => const LoadingPostsList(),
          PostsData() => PostsList(posts: state.posts),
          PostsError() => const ErrorCustomWidget(),
        },
      ),
    );
  }
}
