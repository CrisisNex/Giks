import 'package:flutter/material.dart';

import '../formlar/aractalepform.dart';
import '../formlar/ekipmantalepformu.dart';
import '../formlar/ihtiyactalepform.dart';

class IhtiyacSayfa extends StatelessWidget {
  const IhtiyacSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 30),
      const Divider(height: 0),
      Card(
        child: ListTile(
          title: const Text('Ekipman Talep Et'),
          textColor: Colors.white,
          tileColor: Colors.blue[500],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const EkipmanTalepFormu()),
            );
          },
        ),
      ),
      const SizedBox(height: 30),
      const Divider(height: 0),
      Card(
        child: ListTile(
          title: const Text('Araç Talep Et'),
          textColor: Colors.white,
          tileColor: Colors.blue[500],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AracTalepFormu()),
            );
          },
        ),
      ),
      const SizedBox(height: 30),
      const Divider(height: 0),
      Card(
        child: ListTile(
          title: const Text('İhtiyaç Talep Et'),
          textColor: Colors.white,
          tileColor: Colors.blue[500],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const IhtiyacTalepFormu()),
            );
          },
        ),
      ),
      const SizedBox(height: 30),
      Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Talep Durum Alanı',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 320,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
      )
    ]);
  }
}
