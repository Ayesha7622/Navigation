import 'package:flutter/material.dart';

class Swapping extends StatefulWidget {
  const Swapping({super.key});

  @override
  State<Swapping> createState() => _SwappingState();
}

class _SwappingState extends State<Swapping> {
  int n1 = 0;
  int n2 = 0;

  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  // relational operators----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 232, 235),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 95, 77),
        title: Text(
          'Swapping',
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 78, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: n1Controller,
                  style:
                      TextStyle(color: const Color.fromARGB(255, 96, 84, 84)),
                  decoration: InputDecoration(
                    hintText: "Enter the value of n1:",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 21, 21, 21)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 78, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: n2Controller,
                  style:
                      TextStyle(color: const Color.fromARGB(255, 105, 94, 94)),
                  decoration: InputDecoration(
                    hintText: "Enter the value of n2:",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 18, 17, 17)),
                  ),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     'Before Swapping ,',
          //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Text(
          //   'The value of n1=$n1',
          //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   'The value of n2=$n2',
          //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          // ),
          // SizedBox(
          //   height: 27,
          // ),

          Center(
            child: FloatingActionButton(
              onPressed: () {
                n1 = int.parse(n1Controller.text);
                n2 = int.parse(n2Controller.text);
                n1 = n1 + n2;
                n2 = n1 - n2;
                n1 = n1 - n2;

                // n1 = int.parse(n1Controller.text);
                // n2 = int.parse(n2Controller.text);
              },
              child: Text(
                'Swapping',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'After Swapping ,',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'The value of n1=$n1',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'The value of n2=$n2',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    );
  }
}
