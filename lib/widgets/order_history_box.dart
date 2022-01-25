import 'package:flutter/material.dart';

import 'button.dart';

class HistoryBoxs extends StatelessWidget {
  const HistoryBoxs({
    Key? key,
    required this.status,
    required this.date,
    required this.price,
    required this.itemName,
    required this.quantity,
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
      margin: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      height: 290,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Paracel ID: 17372832'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'DETAILS',
                      style: TextStyle(color: _red),
                    ))
              ],
            ),
            Row(
              children: [
                Row(
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
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      )
                  ],
                ),
              ],
            ),
            ////////////////////////
            Row(
              children: [
                Row(
                  children: [
                    const Text('Order Date: '),
                    Text(
                      date,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/milo.png',
                    fit: BoxFit.cover,
                    height: 90,
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$ $price ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$quantity Quantity',
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(thickness: 2),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'DECLINE ORDER',
                  style: TextStyle(color: _red),
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 3),
            )
          ],
        ),
      ),
    );
  }
}
