import 'package:flutter/material.dart';
import 'olaylar.dart';
import 'etkinlikler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          flex: 0,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Olaylar',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 1.0, // ayraç kalınlığı
          color: Colors.grey, // ayraç rengi
        ),
        const Olaylar(),
        Expanded(
          flex: 0,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Etkinlikler',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 1.0, // ayraç kalınlığı
          color: Colors.grey, // ayraç rengi
        ),
        const Etkinlik(),
      ],
    );
  }
}
