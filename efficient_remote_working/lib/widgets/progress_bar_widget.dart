import 'package:flutter/material.dart';

class ProgressBarWidget extends StatelessWidget {
  final String emoji;
  final double progress;

  const ProgressBarWidget({
    super.key,
    required this.emoji,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          emoji,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 200,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: FractionallySizedBox(
            widthFactor: progress,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
