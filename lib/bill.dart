import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  int units = 0;
  int price = 0;
  int tax = 0;
  int total_bill = 0;
  TextEditingController unitsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Icon(Icons.flash_on),
        title: Text('Wapda Project:'),
      ),
      body: Column(
        children: [TextFormField()],
      ),
    );
  }
}
