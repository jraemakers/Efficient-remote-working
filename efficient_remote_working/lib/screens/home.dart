import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
            child: MoodSwitcher(),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildEmojiWithProgressBar('😴', 0.8),
                      _buildEmojiWithProgressBar('😢', 0.6),
                      _buildEmojiWithProgressBar('😐', 0.3),
                      _buildEmojiWithProgressBar('😃', 0.4),
                      _buildEmojiWithProgressBar('😡', 0.5),
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

  Widget _buildEmojiWithProgressBar(String emoji, double progress) {
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

class MoodSwitcher extends StatefulWidget {
  const MoodSwitcher({super.key});

  @override
  _MoodSwitcherState createState() => _MoodSwitcherState();
}

class _MoodSwitcherState extends State<MoodSwitcher> {
  int selectedMood = 2;

  List<String> moods = [
    "😴 Sleepy",
    "😢 Sad",
    "😐 Neutral",
    "😃 Happy",
    "😡 Angry",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF252736),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'HOW ARE YOU TODAY?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 175,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      selectedMood = index;
                    });
                  },
                  enableInfiniteScroll: false,
                  viewportFraction: 0.4,
                  aspectRatio: 2.0,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  initialPage: selectedMood,
                ),
                items: moods.map((mood) {
                  return MoodIcon(
                    mood: mood,
                    isSelected: mood == moods[selectedMood],
                    onMoodSelected: () {
                      setState(() {
                        selectedMood = moods.indexOf(mood);
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoodIcon extends StatelessWidget {
  final String mood;
  final bool isSelected;
  final Function onMoodSelected;

  const MoodIcon({
    super.key,
    required this.mood,
    required this.isSelected,
    required this.onMoodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onMoodSelected();
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : const Color(0xFF252736),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              mood.split(' ')[0],
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            mood.split(' ')[1],
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
