import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/mood.dart';
import 'screens/table.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, superKey});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MoodScreen(),
    const TableScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xFF1E1D2A),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.white,
              ),
              label: 'Moods',
              activeIcon: Icon(
                Icons.emoji_emotions,
                color: Colors.white,
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.table_bar_outlined,
              color: Colors.white,
            ),
            label: 'Table',
            activeIcon: Icon(
              Icons.table_bar,
              color: Colors.white,
            ),
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
