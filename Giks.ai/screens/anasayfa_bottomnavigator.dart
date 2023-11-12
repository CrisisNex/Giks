import 'package:flutter/material.dart';

class AnasayfaNavigator extends StatefulWidget {
  const AnasayfaNavigator({Key? key, required this.onTap}) : super(key: key);

  final void Function(int) onTap;

  @override
  _AnasayfaNavigatorState createState() => _AnasayfaNavigatorState();
}

class _AnasayfaNavigatorState extends State<AnasayfaNavigator> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.onTap(index);
  }

  final List = [];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.lightBlue, // set primary color here
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Olaylar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        // currentIndex: _selectedIndex, //
        selectedItemColor: Colors.purple[300],
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 16.0,
        unselectedFontSize: 14.0,
        onTap: _onItemTapped,
        backgroundColor: Colors.orange[300], // Arka plan rengini belirtin.
      ),
    );
  }
}
