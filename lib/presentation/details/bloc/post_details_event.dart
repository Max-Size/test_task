part of 'post_details_bloc.dart';

@immutable
sealed class PostDetailsEvent {}

class GetPostDetails extends PostDetailsEvent {
  final Post post;
  
  GetPostDetails({
    required this.post,
  });
}
