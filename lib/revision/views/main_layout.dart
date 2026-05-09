import 'package:flutter/material.dart';
import 'home_view.dart';
import 'saved_posts_view.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePostsScreen(),
    const SavedPostsView(),
    // const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF2C3E50),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'API Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved (Hive)',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),*/
        ],
      ),
    );
  }
}
