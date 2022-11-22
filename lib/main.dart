import 'package:flutter/material.dart';
import 'package:sign_in/pages/home_screen.dart';
import 'package:sign_in/pages/signed_in.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/src/widgets/router.dart';
// Step 2

void main() {
  runApp(MyApp());
}

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => HomeScreen()),
  GoRoute(
    path: '/signed_in',
    builder: (context, state) => SignedIn(
      name: state.extra as String,
    ),
  ),
]);

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Step 4
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routerConfig: router,
    );
  }

  // Step 3
}
