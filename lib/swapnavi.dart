import 'package:flutter/material.dart';

class Swap extends StatelessWidget {
  Swap({super.key});

  int n1 = 0;
  int n2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 51, 96),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 176, 233),
        title: Text(
          'After Swapping:',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          
            n1=n1+n2;
            n2=n1-n2;
            n1=n2-n1;

            Text('The value of n1=');
            Text('The value of n2=');
        ],
      ),
    );
  }
}
