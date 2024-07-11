import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/presentation/main/bloc/posts_bloc.dart';
import 'package:posts/presentation/main/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsBloc()..add(GetPosts()),
        child: const PostsScreen(),
      ),
    );
  }
}
