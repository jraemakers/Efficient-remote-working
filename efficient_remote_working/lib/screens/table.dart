import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'THE COFFEE TABLE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            const Text(
              'COMMUNICATION IS KEY',
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
            ),
          ),
          Positioned(
            top: 70, // Adjust the top position as needed
            left: 66, // Adjust the left position as needed
            right: 66, // Adjust the right position as needed
            child: Container(
              height: 450, // Set the height as needed
              decoration: BoxDecoration(
                color: const Color(0xFF252736),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
              ),
            ),
          ),
        ],
      ),
    );
  }
}
