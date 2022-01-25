import 'package:flutter/material.dart';

//enum status { pending, delivered }

class OrderBox extends StatelessWidget {
  const OrderBox({
    Key? key,
    required this.type,
    required this.status,
    required this.navigation,
  }) : super(key: key);

  final String type;
  final bool status;
  final VoidCallback navigation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'Parcel ID: 210393929',
                  overflow: TextOverflow.clip,
                  softWrap: false,
                ),
                margin: const EdgeInsets.only(right: 100),
                width: 150,
              ),
              GestureDetector(
                child: Text(
                  'DETAILS',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: navigation,
              )
            ],
          ),
          Text('Type: $type'),
          Row(
            children: [
              Text('Status '),
              if (status)
                Text(
                  'deilvered',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              else
                Text(
                  'pending',
                  style: TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
                )
            ],
          )
        ],
      ),
    );
  }
}
