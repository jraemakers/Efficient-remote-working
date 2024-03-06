import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'WELCOME BACK, USER!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            const Text(
              'LET\'S TRACK YOUR MOOD',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1D2A),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF1E1D2A),
            child: const Center(
              child: Text(
                'Home Screen',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30, // Adjust the top position as needed
            left: 16, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: Container(
              height: 150, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  'MOOD CHANGER 1',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 190, // Adjust the top position for the second container
            left: 16, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: Container(
              height: 300, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildEmojiWithProgressBar('😃', 0.8),
                  _buildEmojiWithProgressBar('😊', 0.6),
                  _buildEmojiWithProgressBar('😐', 0.3),
                  _buildEmojiWithProgressBar('😕', 0.4),
                  _buildEmojiWithProgressBar('😞', 0.5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmojiWithProgressBar(String emoji, double progress) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          emoji,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        SizedBox(width: 10),
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
                border: Border.all(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

