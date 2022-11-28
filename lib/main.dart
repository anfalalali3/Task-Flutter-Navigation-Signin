import 'package:flutter/material.dart';
import 'package:sign_in/pages/home_screen.dart';
import 'package:sign_in/pages/signed_in.dart';
import 'package:go_router/go_router.dart';

// Step 2

void main() {
  runApp(MyApp());
}

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => HomeScreen()),
  GoRoute(
    path: '/signin',
    builder: (context, state) => SignedIn(
      name: state.extra as String,
    ),
  ),
]);

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // Step 4
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Signin App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routerConfig: router,
    );
  }
}
