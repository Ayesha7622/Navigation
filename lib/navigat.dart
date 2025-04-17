import 'package:flutter/material.dart';

class Navigat extends StatelessWidget {
  const Navigat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 188, 245),
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(),
        ),
      ),
    );
  }
}
