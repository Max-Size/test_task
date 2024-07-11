import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:posts/data/remote/entities/post.dart';
import 'package:posts/data/remote/repository/posts.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final _postsRepository = PostsRepository();

  PostsBloc() : super(PostsLoading()) {
    on<GetPosts>((event, emit) async {
      emit(PostsLoading());
      try {
        final data = await _postsRepository.getAllPosts();
        emit(PostsData(posts: data));
      } catch (e) {
        emit(PostsError());
      }
    });
  }
}
