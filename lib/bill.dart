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
      backgroundColor: const Color.fromARGB(255, 103, 136, 152),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 218, 238),
        leading: Icon(Icons.calculate),
        title: Text(
          'Wapda Project',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: unitsController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: ('Enter Units'),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 39, 51, 57),
              onPressed: () {
                units = int.parse(unitsController.text);
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
                setState(() {});
              },
              child: Icon(
                Icons.calculate,
                color: Colors.white,
              ),
              // child: Text(
              //   'Total Bill=',
              //   style: TextStyle(color: Colors.white),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Units Consumed=$units',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Price=$price',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tax=$tax',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Total Bill=$total_bill',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
