import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/posts_bloc.dart';
import '../widgets/skeleton_loader.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Posts'))),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<PostBloc>()
              .add(FetchPosts()); // Refetch posts on refresh
        },
        child: BlocBuilder<PostBloc, PostState>( // bloc builder to build widget based on state data
          builder: (context, state) {
            if (state.status == PostStatus.loading) {
              return const SkeletonLoader(); // Skeleton loader when loading posts
            } else if (state.status == PostStatus.failure) {
              return Center(
                  child: Text(
                      'Error: ${state.error}')); // Show specific error messages
            }
            return ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return Card(
                  color: Theme.of(context).cardColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text(post.title!),
                    subtitle: Text(post.body!),
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .hideCurrentSnackBar(); // clear prevois snalbars
                      ScaffoldMessenger.of(context).showSnackBar(
                        // pop a new snack bar
                        SnackBar(
                          content: Text('Post ID: ${post.id}'),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10,
              ),
            );
          },
        ),
      ),
    );
  }
}
