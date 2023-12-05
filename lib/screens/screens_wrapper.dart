import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/home_screen.dart';
import 'package:lithabit/screens/favorites/favorite_screen.dart';
import 'package:lithabit/screens/profile/profile_screen.dart';
import 'package:lithabit/screens/rakbuku/rakbukuscreens.dart';
import 'package:lithabit/screens/semua_buku/semua_buku_screen.dart';

class ScreensWrapper extends StatefulWidget {
  const ScreensWrapper({Key? key}) : super(key: key);

  @override
  _ScreensWrapperState createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SemuaBukuScreen(),
    const RakBukuScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          //home//
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //semua buku//
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_outlined),
            label: 'Semua Buku',
          ),

            BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Rak Buku',
          ),

          //Favorite//
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite'),

          //profile//
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
