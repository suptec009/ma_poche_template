import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final double size;
  final double widthFactor;

  const RoundedCard({super.key, required this.backgroundColor, required this.icon, required this.size, required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * widthFactor,
        height: MediaQuery.of(context).size.width * widthFactor,
        decoration: BoxDecoration(
          borderRadius:
               BorderRadius.circular(5.0)
          ,
          color: backgroundColor,
          shape: BoxShape.rectangle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      );
  }
}