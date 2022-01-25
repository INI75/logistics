import 'package:flutter/material.dart';
import 'package:logistics/providers/assignedBox.dart';

class Delivered extends StatefulWidget {
  const Delivered({ Key? key }) : super(key: key);

  @override
  _DeliveredState createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return OrderBox(
          type: 'box',
          status: true,
          navigation: () => Navigator.pushNamed(context, '/'),
        );
      },
    );
  }
}