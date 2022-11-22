import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  // Step 5
  const SignedIn({
    required this.name,
    Key? key,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Step 9
            Text("Welcome username"),
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 140,
            ),
          ],
        ),
      ),
    );
  }
}
