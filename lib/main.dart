import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user.dart' as user_import_prefix;

part 'main.g.dart';

@riverpod
user_import_prefix.User user(UserRef ref) {
  return user_import_prefix.User("id");
}

@riverpod
Stream<user_import_prefix.User> userStream(UserStreamRef ref) {
  return Stream.value(user_import_prefix.User("id"));
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
