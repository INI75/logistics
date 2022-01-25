import 'package:flutter/material.dart';
import 'package:logistics/widgets/button.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);
  final Color _red = const Color.fromRGBO(235, 87, 87, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Placeholder(
            fallbackHeight: 300,
            fallbackWidth: double.infinity,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 25),
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [Container(), Column()],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'INACTIVE',
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                          Button(
                              label: 'START RIDE',
                              height: 35,
                              width: 170,
                              function: () {})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
