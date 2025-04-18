import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:assessement_helprush/data/models/posts_model.dart';
import '../data/repositories/posts_repo.dart';


part 'posts_event.dart';
part 'posts_state.dart';


class PostBloc extends Bloc<PostsEvent, PostState> {
  final PostRepository repository;
 // injecting repo into bloc
  PostBloc(this.repository) : super(const PostState()) {
    on<FetchPosts>(_onFetchPosts);
  }

  Future<void> _onFetchPosts(FetchPosts event, Emitter<PostState> emit) async {
    emit(state.copyWith(status: PostStatus.loading));
    try {
      final posts = await repository.fetchPosts();
      emit(state.copyWith(status: PostStatus.success, posts: posts));//Updating Posts list
    } catch (e) {
      emit(state.copyWith(status: PostStatus.failure, error: e.toString()));//Updating error message
    }
  }
}
