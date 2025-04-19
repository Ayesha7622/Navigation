import 'package:flutter/material.dart';

class SwapWithoutScreen extends StatefulWidget {
  const SwapWithoutScreen({super.key});

  @override
  State<SwapWithoutScreen> createState() => _SwapWithoutScreenState();
}

class _SwapWithoutScreenState extends State<SwapWithoutScreen> {
  int a = 0;
  int b = 0;
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: Icon(Icons.label),
        title: Text(
          'Swapping',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: n1Controller,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: 'enter 1st number',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: n2Controller,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: 'enter 2nd number',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purpleAccent,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  a = int.parse(n1Controller.text);
                  b = int.parse(n2Controller.text);
                  a = a + b;
                  b = a - b;
                  a = a - b;
                  setState(() {});
                  print("before Swapping value of a=$a");
                  print("before swapping value of b=$b");
                },
                child: Text(
                  'SWAP',
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.purpleAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'after swapping value of a=$a',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'after swapping value of b=$b',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
