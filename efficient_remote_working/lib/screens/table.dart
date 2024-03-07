import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

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
            top: 70,
            left: 66,
            right: 66,
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Center(),
            ),
          ),
        ],
      ),
    );
  }
}
