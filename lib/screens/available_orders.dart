import 'package:flutter/material.dart';
import 'package:logistics/widgets/current_orders.dart';
import 'package:logistics/widgets/orders_history.dart';

class AvailableOrders extends StatelessWidget {
  const AvailableOrders({Key? key}) : super(key: key);
  static const RouteName = '/availbleOrder';
  final Color _red = const Color.fromRGBO(235, 87, 87, 1);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
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
                  'Current Orders',
                  style: TextStyle(color: _red),
                ),
              ),
              Tab(
                  child: Text(
                'Orders History',
                style: TextStyle(color: _red),
              )),
            ],
          ),
        ),
        body: const TabBarView(children: [
          CurrentOrders(),
          OrdersHistory(),
        ]),
      ),
    );
  }
}
