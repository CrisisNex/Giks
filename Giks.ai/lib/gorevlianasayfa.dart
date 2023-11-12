import 'package:flutter/material.dart';
import 'screens/gorevimsayfasi.dart';
import 'screens/gorevliprofil.dart';
import 'screens/gorevlitakim.dart';
import 'screens/gorevliihtiyac.dart';

class GorevliAnasayfa extends StatefulWidget {
  const GorevliAnasayfa({super.key});

  @override
  _GorevliAnasayfaState createState() => _GorevliAnasayfaState();
}

class _GorevliAnasayfaState extends State<GorevliAnasayfa> {
  String selectedOption = '';
  int _selectedIndex = 0;
  String _appBarTitle = 'Görevim';

  final List<Widget> _pages = [
    const Gorevim(),
    const TakimSayfa(),
    const IhtiyacSayfa(),
    const GorevliProfil(),
  ];

  final List<String> _bottomNavBarLabels = [
    'Görevim',
    'Takım',
    'İhtiyaç',
    'Profil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        primary: true,
        centerTitle: true,
        title: Text(_appBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            setState(() {
              _selectedIndex = 3;
            });
          },
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.notifications),
            onSelected: (value) {
              // Seçilen bildirim işlemleri
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'Bildirim 1',
                child: Text('Bildirim 1'),
              ),
              const PopupMenuItem<String>(
                value: 'Bildirim 2',
                child: Text('Bildirim 2'),
              ),
              const PopupMenuItem<String>(
                value: 'Bildirim 3',
                child: Text('Bildirim 3'),
              ),
            ],
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.orange[300],
        ),
        child: BottomNavigationBar(
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
              label: 'Görev',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Takım',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cases_outlined),
              label: 'İhtiyaçlar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          selectedItemColor: Colors.orange[300],
          unselectedItemColor: Colors.grey[600],
        ),
      ),
    );
  }
}
