part of 'post_details_bloc.dart';

@immutable
sealed class PostDetailsState {}

final class PostDetailsLoading extends PostDetailsState {}

final class PostDetailsError extends PostDetailsState {}

final class PostDetailsData extends PostDetailsState {
  final Post post;
  final List<Comment> comments;

  PostDetailsData({
    required this.post,
    required this.comments,
  });
}
