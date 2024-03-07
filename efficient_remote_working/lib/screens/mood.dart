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
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      color: const Color(0xFF1E1D2A),
      child: Stack(
        children: [
          buildPositionedAvatar(top: 50, imageName: 'andrea.jpg'),
          buildPositionedAvatar(top: 175, imageName: 'justin.jpg'),
          buildPositionedAvatar(top: 300, imageName: 'stefan.jpg'),
          buildMoodContainer(
              top: 30, name: 'SARAH V.', emoji: '😴', mood: 'LAZY'),
          buildMoodContainer(
              top: 160, name: 'MIKE S.', emoji: '😃', mood: 'HAPPY'),
          buildMoodContainer(
              top: 290, name: 'TOM K.', emoji: '😡', mood: 'ANGRY'),
        ],
      ),
    );
  }

  Widget buildPositionedAvatar(
      {required double top, required String imageName}) {
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

  Widget buildMoodContainer(
      {required double top,
      required String name,
      required String emoji,
      required String mood}) {
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
