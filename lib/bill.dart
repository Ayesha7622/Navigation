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
        children: [
          Text('Units'),
          TextFormField(
            controller: unitsController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: ('Enter Units'),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              if (units >= 200) {
                price = 50000;
              }
              if (units <= 200) {
                price = 40000;
              }
              total_bill = units * price;
              if (total_bill > 30000) {
                tax = 3000;
                total_bill = tax + total_bill;
              }
              Text('Units Consumed$units');
              Text('Price$price');
              Text('Tax$tax');
              Text('Total Bill$total_bill');
            },
            child: Text('Total Bill='),
          )
        ],
      ),
    );
  }
}
