import 'package:flutter/material.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  int price_of_tola = 0;
  int quantity_of_tola_gold = 0;
  int quantity_of_masha_gold = 0;
  int quantity_of_ratti_gold = 0;
  int quantity_of_point_gold = 0;

  TextEditingController price_of_tolacontroller = TextEditingController();
  TextEditingController quantity_of_tola_goldcontroller =
      TextEditingController();
  TextEditingController quantity_of_masha_goldcontroller =
      TextEditingController();
  TextEditingController quantity_of_ratti_goldcontroller =
      TextEditingController();
  TextEditingController quantity_of_point_goldcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Gold App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price_of_tolacontroller,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 231, 228, 228)),
                  decoration: InputDecoration(
                      hintText: 'Price Of Tola=',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price_of_tolacontroller,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 231, 228, 228)),
                  decoration: InputDecoration(
                      hintText: 'Quantity Of Tola gold=',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price_of_tolacontroller,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 231, 228, 228)),
                  decoration: InputDecoration(
                      hintText: 'Quantity Of Masha gold=',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price_of_tolacontroller,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 231, 228, 228)),
                  decoration: InputDecoration(
                      hintText: 'Quantity Of Ratti gold=',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price_of_tolacontroller,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 231, 228, 228)),
                  decoration: InputDecoration(
                      hintText: 'Quantity Of Point gold=',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          FloatingActionButton(onPressed: () {
            price_of_tola = int.parse(price_of_tolacontroller.text);
            quantity_of_tola_gold =
                int.parse(quantity_of_tola_goldcontroller.text);
            quantity_of_masha_gold =
                int.parse(quantity_of_masha_goldcontroller.text);
            quantity_of_ratti_gold =
                int.parse(quantity_of_ratti_goldcontroller.text);
            quantity_of_point_gold =
                int.parse(quantity_of_ratti_goldcontroller.text);
            if (price_of_tola == "" &&
                quantity_of_tola_gold == "" &&
                quantity_of_masha_gold == "" &&
                quantity_of_ratti_gold == "" &&
                quantity_of_point_gold == "") {
              price_of_tola = (price_of_tola * quantity_of_tola_gold) +
                  quantity_of_masha_gold +
                  quantity_of_ratti_gold +
                  quantity_of_point_gold;
            }
            child:
            Text('Calculate');
          })
        ],
      ),
    );
  }
}
