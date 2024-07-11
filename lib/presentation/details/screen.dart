import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/presentation/details/bloc/post_details_bloc.dart';
import 'package:posts/presentation/details/widgets/details_data.dart';
import 'package:posts/presentation/shared/error.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post details'),
      ),
      body: BlocBuilder<PostDetailsBloc, PostDetailsState>(
        builder: (context, state) => switch (state) {
          PostDetailsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          PostDetailsData() => DetailsDataWidget(
              post: state.post,
              comments: state.comments,
            ),
          PostDetailsError() => const ErrorCustomWidget(),
        },
      ),
    );
  }
}
