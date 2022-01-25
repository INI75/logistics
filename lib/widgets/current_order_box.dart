import 'package:flutter/material.dart';
import 'package:logistics/widgets/button.dart';

class CurrentOrdersBox extends StatelessWidget {
  const CurrentOrdersBox({
    Key? key,
    required this.status,
    required this.date,
    required this.price,
    required this.quantity,
    required this.itemName,
  }) : super(key: key);
  final Color _red = const Color.fromRGBO(235, 87, 87, 1);

  final bool status; // add id,
  final String date; // replace with datetime plugin
  final String price;
  final String itemName;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      height: 280,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Paracel ID: 17372832'),
            Row(
              children: [
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(right: 40),
                  child: Row(
                    children: [
                      const Text('Order Status: '),
                      if (status)
                        const Text(
                          'Deilvered',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      else
                        const Text(
                          'Pending',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        )
                    ],
                  ),
                ),
                Text(
                  '\$ $price',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ////////////////////////
            Row(
              children: [
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(right: 40),
                  child: Row(
                    children: [
                      const Text('Order Date: '),
                      Text(
                        date,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Text('$quantity Quantity')
              ],
            ),

            Container(
              margin: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Image.asset(
                'assets/coco.png',
                fit: BoxFit.cover,
                height: 90,
                width: 70,
              ),
            ),
            const Divider(thickness: 2),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'DECLINE ORDER',
                      style: TextStyle(color: _red),
                    ),
                  ),
                  Button(
                      label: 'ACCEPT ORDER',
                      height: 35,
                      width: 170,
                      function: () {})
                ],
              ),
              margin: const EdgeInsets.symmetric(vertical: 3),
            )
          ],
        ),
      ),
    );
  }
}
