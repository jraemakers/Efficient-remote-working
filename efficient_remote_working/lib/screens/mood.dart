import 'package:flutter/material.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'COLLEAGUES MOODS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            const Text(
              'HOW IS THE REST FEELING',
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
          ),
          Positioned(
            top: 30, // Adjust the top position as needed
            left: 100, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: Container(
              height: 110, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              // ignore: prefer_const_constructors
              child: Center(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '😴', // Replace with your desired emoji
                          style: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8), // Adjust the spacing as needed
                        Text(
                          'SARAH V.',
                          style: TextStyle(
                            fontSize: 20, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Adjust the spacing as needed
                    Text(
                      'SARAH IS FEELING: LAZY',
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust the font size as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 160, // Adjust the top position as needed
            left: 100, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: Container(
              height: 110, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              // ignore: prefer_const_constructors
              child: Center(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '😃', // Replace with your desired emoji
                          style: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8), // Adjust the spacing as needed
                        Text(
                          'MIKE S.',
                          style: TextStyle(
                            fontSize: 20, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Adjust the spacing as needed
                    Text(
                      'MIKE IS FEELING: GOOD',
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust the font size as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 290, // Adjust the top position as needed
            left: 100, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: Container(
              height: 110, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              // ignore: prefer_const_constructors
              child: Center(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '😡', // Replace with your desired emoji
                          style: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8), // Adjust the spacing as needed
                        Text(
                          'TOM K.',
                          style: TextStyle(
                            fontSize: 20, // Adjust the font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Adjust the spacing as needed
                    Text(
                      'TOM IS FEELING: ANGRY',
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust the font size as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}