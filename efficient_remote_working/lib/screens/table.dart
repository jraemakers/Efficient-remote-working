import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'THE COFFEE TABLE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1), // Adjust the spacing as needed
            const Text(
              'COMMUNICATION IS KEY',
              style: TextStyle(
                color: Colors.blue, // Set the text color to blue
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
        child: const Center(
          child: Text(
            'Home Screen',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
