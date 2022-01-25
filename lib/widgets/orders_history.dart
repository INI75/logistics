import 'package:flutter/material.dart';

import 'order_history_box.dart';

class OrdersHistory extends StatefulWidget {
  const OrdersHistory({Key? key}) : super(key: key);

  @override
  _OrdersHistoryState createState() => _OrdersHistoryState();
}

class _OrdersHistoryState extends State<OrdersHistory> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const HistoryBoxs(
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
