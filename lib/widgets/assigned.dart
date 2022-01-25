import 'package:flutter/material.dart';
import 'package:logistics/providers/assignedBox.dart';

class Assigned extends StatefulWidget {
  const Assigned({Key? key}) : super(key: key);

  @override
  _AssignedState createState() => _AssignedState();
}

class _AssignedState extends State<Assigned> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return OrderBox(
          type: 'box',
          status: false,
          navigation: () => Navigator.pushNamed(context, '/'),
        );
      },
    );
  }
}
