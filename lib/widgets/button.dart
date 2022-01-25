import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.label,
      required this.height,
      required this.width,
      required this.function})
      : super(key: key);
  final String label;
  final double height;
  final double width;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: const Color.fromRGBO(235, 87, 87, 1),
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(235, 87, 87, 1),
              borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          width: width,
          height: height,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
