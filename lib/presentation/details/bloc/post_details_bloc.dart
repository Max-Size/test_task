import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:posts/data/local/repository/comments.dart';
import 'package:posts/data/remote/entities/comment.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/data/remote/repository/comments.dart';

part 'post_details_event.dart';
part 'post_details_state.dart';

class PostDetailsBloc extends Bloc<PostDetailsEvent, PostDetailsState> {
  final _localCommentsRepo = LocalCommentsRepository();
  final _commentsRepository = CommentsRepository();

  PostDetailsBloc() : super(PostDetailsLoading()) {
    on<GetPostDetails>((event, emit) async {
      emit(PostDetailsLoading());
      try {
        final savedResult =
            await _localCommentsRepo.getSavedCommentsForPost(event.post.id);
        if (savedResult != null) {
          emit(PostDetailsData(
            comments: savedResult.comments.comments,
            post: event.post,
          ));
        } else {
          final data =
              await _commentsRepository.getCommentsForPost(event.post.id);
          emit(PostDetailsData(
            comments: data,
            post: event.post,
          ));
          _localCommentsRepo.saveCommentsForPost(data);
        }
      } catch (e) {
        emit(PostDetailsError());
      }
    });
  }
}
