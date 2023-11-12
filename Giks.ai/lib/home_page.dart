import 'package:flutter/material.dart';

import 'screens/profilepage.dart';
import 'screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _appBarTitle = 'Ana Sayfa';

  final List<Widget> _pages = [
    const HomeScreen(),
    const ProfilePage(),
  ];

  final List<String> _bottomNavBarLabels = [
    'Ana Sayfa',
    'Profil',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          centerTitle: true,
          title: Text(
            _appBarTitle,
          ),
          leading: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
                _appBarTitle = 'Profil';
              });
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // bildirim butonuna tıklandığında yapılacak işlemler
              },
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              _appBarTitle = _bottomNavBarLabels[index];
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.blue[600],
          unselectedItemColor: Colors.black,
        ),
      );
}
