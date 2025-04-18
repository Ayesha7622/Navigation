import 'package:flutter/material.dart';

class Navigat extends StatelessWidget {
  const Navigat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 24, 52),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 220, 241),
        title: Text(
          'Login',
          style: TextStyle(),
        ),
      ),
    );
  }
}
