import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key, required this.onTap})
      : super(key: key);

  final void Function(int) onTap;

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Gorev',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Takım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'İhtiyaç',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex, //
        selectedItemColor: Colors.lightBlue,
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
