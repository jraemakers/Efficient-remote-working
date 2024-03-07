import 'package:flutter/material.dart';

class PositionedAvatar extends StatelessWidget {
  final double top;
  final String imageName;

  const PositionedAvatar(
      {super.key, required this.top, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 16,
      width: 75,
      height: 75,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/$imageName',
        ),
        radius: 24,
      ),
    );
  }
}
