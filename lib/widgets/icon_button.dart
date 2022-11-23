import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  final IconData icon;
  final Function onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final BoxShape shape;

  const IconButtonWidget(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.backgroundColor,
      required this.iconColor,
      required this.shape});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => widget.onPressed),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          borderRadius: this.widget.shape == BoxShape.rectangle
              ? BorderRadius.circular(5.0)
              : null,
          color: widget.backgroundColor,
          shape: widget.shape,
        ),
        child: Icon(
          widget.icon,
          color: widget.iconColor,
          size: 20,
        ),
      ),
    );
  }
}
