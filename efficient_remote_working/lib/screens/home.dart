import 'package:flutter/material.dart';
import '../widgets/mood_switcher_widget.dart';
import '../widgets/progress_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'WELCOME BACK, USER!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            Text(
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
          ),
          const Positioned(
            top: 30,
            left: 16,
            right: 16,
            height: 250,
            child: MoodSwitcherWidget(),
          ),
          Positioned(
            top: 300,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'SUMMARY',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFF252736),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProgressBarWidget(emoji: '😴', progress: 0.8),
                      ProgressBarWidget(emoji: '😢', progress: 0.6),
                      ProgressBarWidget(emoji: '😐', progress: 0.3),
                      ProgressBarWidget(emoji: '😃', progress: 0.4),
                      ProgressBarWidget(emoji: '😡', progress: 0.5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
