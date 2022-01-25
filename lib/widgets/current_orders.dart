import 'package:flutter/material.dart';
import 'package:logistics/widgets/current_order_box.dart';

class CurrentOrders extends StatefulWidget {
  const CurrentOrders({Key? key}) : super(key: key);

  @override
  _CurrentOrdersState createState() => _CurrentOrdersState();
}

class _CurrentOrdersState extends State<CurrentOrders> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CurrentOrdersBox(
          itemName: 'Coco Pops',
          date: '7 May 2021',
          status: true,
          price: '2,500',
          quantity: 1,
        );
      },
    );
  }
}
