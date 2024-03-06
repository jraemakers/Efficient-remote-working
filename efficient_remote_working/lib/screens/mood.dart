import 'package:flutter/material.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'COLLEAGUES MOODS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            Text(
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
      body: Container(
        color: const Color(0xFF1E1D2A),
        child: Stack(
          children: [
            const Positioned(
              top: 50,
              left: 16,
              width: 75,
              height: 75,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/andrea.jpg',
                ),
                radius: 24,
              ),
            ),
            const Positioned(
              top: 175,
              left: 16,
              width: 75,
              height: 75,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/justin.jpg',
                ),
                radius: 24,
              ),
            ),
            const Positioned(
              top: 300,
              left: 16,
              width: 75,
              height: 75,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/stefan.jpg',
                ),
                radius: 24,
              ),
            ),
            Positioned(
              top: 30,
              left: 100,
              right: 16,
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFF252736),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '😴',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'SARAH V.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'SARAH IS FEELING: LAZY',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 100,
              right: 16,
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFF252736),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '😃',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'MIKE S.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'MIKE IS FEELING: HAPPY',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 100,
              right: 16,
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFF252736),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '😡',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'TOM K.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'TOM IS FEELING: ANGRY',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
