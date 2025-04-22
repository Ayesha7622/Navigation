import 'package:flutter/material.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  int amount_of_tola_price = 0;
  int quantity_of_tola_gold = 0;
  int quantity_of_masha_gold = 0;
  int quantity_of_ratti_gold = 0;
  int quantity_of_point_gold = 0;

  TextEditingController amount_of_tola_pricecontroller =
      TextEditingController();
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
        children: [TextFormField()],
      ),
    );
  }
}
