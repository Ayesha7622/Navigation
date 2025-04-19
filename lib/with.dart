// import 'package:flutter/material.dart';

// class SwapWithoutScreen extends StatefulWidget {
//   const SwapWithoutScreen({super.key});

//   @override
//   State<SwapWithoutScreen> createState() => _SwapWithoutScreenState();
// }

// class _SwapWithoutScreenState extends State<SwapWithoutScreen> {
//   int a = 0;
//   int b = 0;
//   TextEditingController n1Controller = TextEditingController();
//   TextEditingController n2Controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       appBar: AppBar(
//         backgroundColor: Colors.pinkAccent,
//         leading: Icon(Icons.label),
//         title: Text(
//           'Swapping',
//           style: TextStyle(
//             color: Colors.yellow,
//             fontSize: 20,
//           ),
//         ),
//         centerTitle: false,
//         actions: [
//           Icon(Icons.search),
//           SizedBox(width: 20),
//           Icon(Icons.more_vert_outlined),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Container(
//               height: 40,
//               width: 230,
//               decoration: BoxDecoration(
//                 color: Colors.purpleAccent,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 controller: n1Controller,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'enter 1st number',
//                   hintStyle: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 40,
//               width: 230,
//               decoration: BoxDecoration(
//                 color: Colors.purpleAccent,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 controller: n2Controller,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'enter 2nd number',
//                   hintStyle: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 40,
//               width: 100,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.purpleAccent,
//               ),
//               child: FloatingActionButton(
//                 onPressed: () {
//                   a = int.parse(n1Controller.text);
//                   b = int.parse(n2Controller.text);
//                   a = a + b;
//                   b = a - b;
//                   a = a - b;
//                   setState(() {});
//                   print("before Swapping value of a=$a");
//                   print("before swapping value of b=$b");
//                 },
//                 child: Text(
//                   'SWAP',
//                   style: TextStyle(
//                     color: Colors.black,
//                     backgroundColor: Colors.purpleAccent,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'after swapping value of a=$a',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'after swapping value of b=$b',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SwapWithScreen extends StatefulWidget {
  const SwapWithScreen({super.key});

  @override
  State<SwapWithScreen> createState() => _SwapWithScreenState();
}

class _SwapWithScreenState extends State<SwapWithScreen> {
  int n1 = 0;
  int n2 = 0;
  int empty = 0;

  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController emptyController = TextEditingController();

  // relational operators----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 232, 235),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 95, 77),
        title: Text(
          'Swap With Third Variable',
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
                  controller: emptyController,
                  style:
                      TextStyle(color: const Color.fromARGB(255, 105, 94, 94)),
                  decoration: InputDecoration(
                    hintText: "Enter the value of n3:",
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
                empty = int.parse(emptyController.text);
                empty = n1;
                n1 = n2;
                n2 = empty;
                setState(() {});

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
