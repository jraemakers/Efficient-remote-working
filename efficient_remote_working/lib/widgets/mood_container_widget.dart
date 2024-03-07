import 'package:flutter/material.dart';

class MoodContainer extends StatelessWidget {
  final double top;
  final String name;
  final String emoji;
  final String mood;

  const MoodContainer({
    super.key,
    required this.top,
    required this.name,
    required this.emoji,
    required this.mood,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 100,
      right: 16,
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: const Color(0xFF252736),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    emoji,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '$name IS FEELING: $mood',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
