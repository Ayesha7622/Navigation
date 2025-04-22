import 'package:flutter/material.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  int priceOfTola = 0;
  int quantityOfTolaGold = 0;
  int quantityOfMashaGold = 0;
  int quantityOfRattiGold = 0;
  int quantityOfPointGold = 0;
  double priceMasha = 0;
  double priceratti = 0;
  double pricePoint = 0;
  // double total_masha_price = 0;
  // double total_ratti_price = 0;
  // double total_point_price = 0;

  TextEditingController priceOfTolaController = TextEditingController();
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
      //background , appbar, body,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              shape: CircleBorder(),
              onPressed: () {
                priceOfTolaController.clear();
                quantity_of_masha_goldcontroller.clear();
              }),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(onPressed: () {})
        ],
      ),
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Gold App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    controller: priceOfTolaController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 231, 228, 228)),
                    decoration: InputDecoration(
                        hintText: 'Price Of Tola=',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
            // Card(

            //   child: ListTile(
            //     leading: CircleAvatar(),
            //     title: Text('USer name'),
            //     subtitle: Text('last message'),
            //     trailing: Text('data'),
            //   ),
            // ),
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
                    controller: priceOfTolaController,
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
                    controller: priceOfTolaController,
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
                    controller: priceOfTolaController,
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
                  padding: const EdgeInsets.all(0.0),
                  child: TextFormField(
                    controller: priceOfTolaController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 231, 228, 228)),
                    decoration: InputDecoration(
                        hintText: 'Quantity Of Point gold=',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
                onPressed: () {
                  priceOfTola = int.parse(priceOfTolaController.text);
                  quantityOfTolaGold =
                      int.parse(quantity_of_tola_goldcontroller.text);
                  quantityOfMashaGold =
                      int.parse(quantity_of_masha_goldcontroller.text);

                  quantityOfRattiGold =
                      int.parse(quantity_of_ratti_goldcontroller.text);
                  quantityOfPointGold =
                      int.parse(quantity_of_ratti_goldcontroller.text);
                  if (priceOfTola == "" &&
                      quantityOfTolaGold == "" &&
                      quantityOfMashaGold == "" &&
                      quantityOfRattiGold == "" &&
                      quantityOfPointGold == "") {
                    priceMasha = quantityOfTolaGold / 12;

                    double totalMashaPrice = priceMasha * quantityOfMashaGold;
                    priceratti = quantityOfMashaGold / 96;

                    double total_ratti_price = priceratti * quantityOfRattiGold;
                    pricePoint = quantityOfPointGold / 300;
                    double totalPointPrice = pricePoint * quantityOfPointGold;

                    priceOfTola = (priceOfTola * quantityOfTolaGold) +
                        quantityOfMashaGold +
                        quantityOfRattiGold +
                        quantityOfPointGold;
                  }
                },
                child:
                    //Icon(Icons.calculate);
                    Text('Calculate')),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Total Price Of Tola ,',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Tola Gold ,',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Masha Gold ,',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Ratti gold ,',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of POint Gold ,',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
