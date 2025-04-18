part of 'posts_bloc.dart';

enum PostStatus { loading, success, failure } // Status for api response

class PostState extends Equatable {
  final PostStatus status;
  final List<Post> posts;
  final String? error;

  const PostState({
    this.status = PostStatus.loading,
    this.posts = const [],
    this.error,
  });
  // CopyWith to change state
  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    String? error,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, posts, error];
}