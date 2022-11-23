import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  final String image;
  final Color color;
  const Avatar({super.key, required this.image, required this.color});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          color: this.widget.color,
          image: DecorationImage(
            image: AssetImage(this.widget.image),
            fit: BoxFit.cover,
          ),
      ),
      width: MediaQuery.of(context).size.width * 0.13,
      height: MediaQuery.of(context).size.width * 0.12,
    );
  }
}
