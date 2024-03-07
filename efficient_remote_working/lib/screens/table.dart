import 'package:flutter/material.dart';
import '../widgets/comunication_item_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  bool isMicrophoneMutedAndrea = false;
  bool isMicrophoneMutedJustin = true;
  bool isMicrophoneMutedStefan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'THE COFFEE TABLE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            Text(
              'COMMUNICATION = 🔑',
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
            child: const Center(),
          ),
          Positioned(
            top: 30,
            left: 64,
            right: 64,
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  CommunicationItem(
                    imagePath: 'assets/images/andrea.jpg',
                    emoji: '😴',
                    isMicrophoneMuted: isMicrophoneMutedAndrea,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommunicationItem(
                        imagePath: 'assets/images/justin.jpg',
                        emoji: '😃',
                        isMicrophoneMuted: isMicrophoneMutedJustin,
                      ),
                    ],
                  ),
                  CommunicationItem(
                    imagePath: 'assets/images/stefan.jpg',
                    emoji: '😡',
                    isMicrophoneMuted: isMicrophoneMutedStefan,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
