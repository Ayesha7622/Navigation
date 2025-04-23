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
  int totalPtice = 0;

  // double total_masha_price = 0;
  // double total_ratti_price = 0;
  // double total_point_price = 0;

  TextEditingController priceOfTolaController = TextEditingController();
  TextEditingController quantityOfTolagoldController = TextEditingController();
  TextEditingController quantityOfMashaGoldController = TextEditingController();
  TextEditingController quantityOfRattiGoldcontroller = TextEditingController();
  TextEditingController quantityOfPointGoldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background , appbar, body,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //     shape: CircleBorder(),
          //     onPressed: () {
          //       priceOfTolaController.clear();
          //       quantityOfTolagoldController.clear();
          //     }),
          // SizedBox(
          //   width: 10,
          // ),
          // FloatingActionButton(onPressed: () {})
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Jwellery App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.calculate),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  border: Border.all(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: priceOfTolaController,
                    style: TextStyle(color: Colors.yellow),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Price Of Tola=',
                        hintStyle: TextStyle(color: Colors.yellow)),
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
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    border: Border.all(width: 2, color: Colors.amber),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: quantityOfTolagoldController,
                    style: TextStyle(color: Colors.yellow),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Quantity Of Tola gold=',
                        hintStyle: TextStyle(color: Colors.yellow)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.amber)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: quantityOfMashaGoldController,
                    style: TextStyle(color: Colors.yellow),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Quantity Of Masha gold=',
                        hintStyle: TextStyle(color: Colors.yellow)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  border: Border.all(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: quantityOfRattiGoldcontroller,
                    style: TextStyle(color: Colors.yellow),
                    decoration: InputDecoration(
                        hintText: 'Quantity Of Ratti gold=',
                        hintStyle: TextStyle(color: Colors.yellow)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: quantityOfPointGoldcontroller,
                    style: TextStyle(color: const Color.fromARGB(255, 7, 7, 7)),
                    decoration: InputDecoration(
                        hintText: 'Quantity Of Point gold=',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      priceOfTola = int.parse(priceOfTolaController.text);
                      quantityOfTolaGold =
                          int.parse(quantityOfTolagoldController.text);
                      quantityOfMashaGold =
                          int.parse(quantityOfMashaGoldController.text);

                      quantityOfRattiGold =
                          int.parse(quantityOfRattiGoldcontroller.text);
                      quantityOfPointGold =
                          int.parse(quantityOfPointGoldcontroller.text);
                      // if (priceOfTola == "" &&
                      //     quantityOfTolaGold == "" &&
                      //     quantityOfMashaGold == "" &&
                      //     quantityOfRattiGold == "" &&
                      //     quantityOfPointGold == "") {
                      priceMasha = quantityOfTolaGold / 12;

                      double totalMashaPrice = priceMasha * quantityOfMashaGold;
                      priceratti = quantityOfMashaGold / 96;

                      double totalRattiPrice = priceratti * quantityOfRattiGold;
                      pricePoint = quantityOfPointGold / 300;
                      double totalPointPrice = pricePoint * quantityOfPointGold;

                      totalPtice = (priceOfTola * quantityOfTolaGold) +
                          quantityOfMashaGold +
                          quantityOfRattiGold +
                          quantityOfPointGold;
                      print('Total Price=$totalPtice');
                      setState(() {});
                      //}
                    },
                    child: Icon(Icons.calculate)
                    //     Text(
                    //   'Calculate',
                    // )
                    ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Calculatr',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Icon(Icons.refresh) //Text('Clear'),
                    ),
              ],
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Text('Clear'),
            // ),

            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Text('Clear'),
            // ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Total Price Of Rs.$totalPtice',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Tola Gold =',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Masha Gold =',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Ratti gold =',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of POint Gold =',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
