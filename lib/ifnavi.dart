import 'package:flutter/material.dart';

class Navig extends StatelessWidget {
  const Navig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 51, 96),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 176, 233),
        title: Text(
          'Login',
          style: TextStyle(),
        ),
      ),
    );
  }
}
