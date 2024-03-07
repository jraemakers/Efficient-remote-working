import 'package:flutter/material.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/mood_container_widget.dart';

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
        child: const Stack(
          children: [
            PositionedAvatar(top: 50, imageName: 'andrea.jpg'),
            PositionedAvatar(top: 175, imageName: 'justin.jpg'),
            PositionedAvatar(top: 300, imageName: 'stefan.jpg'),
            MoodContainer(top: 30, name: 'SARAH V.', emoji: '😴', mood: 'LAZY'),
            MoodContainer(
                top: 160, name: 'MIKE S.', emoji: '😃', mood: 'HAPPY'),
            MoodContainer(top: 290, name: 'TOM K.', emoji: '😡', mood: 'ANGRY'),
          ],
        ),
      ),
    );
  }
}
