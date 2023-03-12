import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_user.dart' as auth_user;
import 'user.dart';

part 'main.g.dart';

@riverpod
auth_user.User user(UserRef ref) {
  return auth_user.User("id");
}

@riverpod
Stream<auth_user.User> userStream(UserStreamRef ref) {
  // return dummy stream
  return Stream.value(auth_user.User("id"));
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
