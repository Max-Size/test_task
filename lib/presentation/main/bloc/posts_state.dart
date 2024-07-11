part of 'posts_bloc.dart';

@immutable
sealed class PostsState {}

final class PostsLoading extends PostsState {}

final class PostsData extends PostsState {
  final List<Post> posts;

  PostsData({required this.posts});
}
