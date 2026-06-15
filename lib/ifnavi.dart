import 'package:flutter/material.dart';

class Navig extends StatelessWidget {
  const Navig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 124, 160),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 148, 175, 182),
          title: Text(
            'Login',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(children: [
          Container(
            height: 810,
            width: 540,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/log.png'),
                //fit: BoxFit.cover
              ),
            ),
          ),
        ]));
  }
}
