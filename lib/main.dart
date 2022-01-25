import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistics/screens/available_orders.dart';
import 'package:logistics/screens/create_account.dart';
import 'package:logistics/screens/log_in.dart';
import 'package:logistics/screens/order_details.dart';
import 'package:logistics/screens/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // didnt add provides yet but package is installed
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: const OrderDetails(),

      /// replace with CreateAccount to start order flow
      routes: {
        Orders.RouteName: (context) => Orders(),
        // first tabs
        LogIn.RouteName: (context) => const LogIn(),
        // normal login
        AvailableOrders.RouteName: (context) => const AvailableOrders(),
        //second tabs
      },
    );
  }
}
