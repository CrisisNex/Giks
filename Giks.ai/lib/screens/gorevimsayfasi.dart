import 'package:flutter/material.dart';
import '../formlar/afetzedeform.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}

class Gorevim extends StatefulWidget {
  const Gorevim({Key? key}) : super(key: key);

  @override
  _GorevimState createState() => _GorevimState();
}

class _GorevimState extends State<Gorevim> {
  String selectedOption = '';
  Color shadowColor = Colors.orange.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        CustomCard(
          child: ListTile(
            title: const Text('Olay Tanımı'),
            textColor: Colors.white,
            tileColor: Colors.blue[500],
            trailing: const Icon(Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                selectedOption = 'Olay Tanımı';
              });
            },
          ),
        ),
        if (selectedOption == 'Olay Tanımı')
          const CustomCard(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                      '03.02.2024 tarihinde 37.7749, -122.4194 konumunda bir deprem meydana gelmiştir. '),
                ),
                ListTile(
                  title: Text(
                      'Yıkılan binalar ve afetzeler için arama kurtarma ekiplerine ihtiyaç duyulmaktadır.'),
                ),
              ],
            ),
          ),
        const Divider(height: 0),
        const SizedBox(height: 30),
        CustomCard(
          child: ListTile(
            title: const Text('Görevim'),
            textColor: Colors.white,
            tileColor: Colors.blue[500],
            trailing: const Icon(Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                selectedOption = 'Görevim';
              });
            },
          ),
        ),
        if (selectedOption == 'Görevim')
          const CustomCard(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                      'Aşağıda belirtilen konuma en hızlı şekilde ulaşmak'),
                ),
                ListTile(
                  title: Text(
                      'İhtiyaçları “İhtiyaç” sayfasındaki ilgili alandan talep etmek'),
                ),
                ListTile(
                  title: Text(
                      'Kendiniz ve takım arkadaşlarınız ile koordineli çalışmak'),
                ),
              ],
            ),
          ),
        const Divider(height: 0),
        const SizedBox(height: 30),
        CustomCard(
          child: Column(
            children: [
              ListTile(
                title: const Text('Konum'),
                textColor: Colors.white,
                tileColor: Colors.blue[500],
                trailing: const Icon(Icons.arrow_drop_down),
                onTap: () async {
                  setState(() {
                    selectedOption = 'Konum';
                  });
                  // Open a map app with coordinates
                },
              ),
              const Divider(height: 0),
              if (selectedOption == 'Konum')
                const ListTile(
                  title: Text('Koordinat: 37.7749, -122.4194'),
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Divider(height: 0),
        Card(
          child: ListTile(
            title: const Text('Afetzede Çıkarma Formu'),
            textColor: Colors.white,
            tileColor: Colors.blue[500],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AfetzedeCikarmaFormu(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
