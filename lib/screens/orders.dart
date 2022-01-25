import 'package:flutter/material.dart';
import 'package:logistics/widgets/assigned.dart';
import 'package:logistics/widgets/delivered.dart';

class Orders extends StatelessWidget {
  Orders({Key? key}) : super(key: key);
  final Color _red = Color.fromRGBO(235, 87, 87, 1);
  static const RouteName = '/orders';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            'ORDERS',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          bottom: TabBar(
            indicatorColor: _red,
            tabs: [
              Tab(
                child: Text(
                  'Assigned',
                  style: TextStyle(color: _red),
                ),
              ),
              Tab(
                  child: Text(
                'Deliverd',
                style: TextStyle(color: _red),
              )),
            ],
          ),
        ),
        body: const TabBarView(children: [Assigned(), Delivered()]),
      ),
    );
  }
}
