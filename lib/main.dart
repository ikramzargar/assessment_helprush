import 'package:assessement_helprush/bloc/posts_bloc.dart';
import 'package:assessement_helprush/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repositories/posts_repo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final postRepository = PostRepository();
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        cardColor: Colors.grey[100],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff151929),
          foregroundColor: Colors.white,
        ),
        cardColor: Colors.grey[900],
      ),
      themeMode: ThemeMode.system,
      home: BlocProvider(
        create: (_) => PostBloc(postRepository)..add(FetchPosts()),
        child: const HomePage(),
      ),
    );
  }
}
