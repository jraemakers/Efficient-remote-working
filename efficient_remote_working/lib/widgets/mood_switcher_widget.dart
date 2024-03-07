import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MoodSwitcherWidget extends StatefulWidget {
  const MoodSwitcherWidget({
    super.key,
  });

  @override
  _MoodSwitcherWidgetState createState() => _MoodSwitcherWidgetState();
}

class _MoodSwitcherWidgetState extends State<MoodSwitcherWidget> {
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
