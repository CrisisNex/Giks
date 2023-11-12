import 'package:akeks/screens/takimliderformlari.dart';
import 'package:flutter/material.dart';
import '../formlar/eklentiler/mappicker.dart';
import 'olaylar.dart';
import 'etkinlikler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildSectionHeader('Olaylar'),
        const Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
        const Olaylar(),
        _buildSectionHeader('Etkinlikler'),
        const Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
        const Etkinlik(),

      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
