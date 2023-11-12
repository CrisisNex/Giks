import 'package:flutter/material.dart';
import '../lib/formlar/afetzedeform.dart';

class Gorevim extends StatefulWidget {
  const Gorevim({Key? key}) : super(key: key);

  @override
  _GorevimState createState() => _GorevimState();
}

class _GorevimState extends State<Gorevim> {
  String selectedOption = '';

  Future<bool> canLaunchUrl(Uri url) async {
    return await canLaunchUrl(url.toString() as Uri);
  }

  Future<void> launchUrl(Uri url) async {
    await launchUrl(url.toString() as Uri);
  }

//...

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
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
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
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
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                  String url =
                      'https://www.google.com/maps/search/?api=1&query=37.7749,-122.4194';
                  if (await canLaunchUrl(url as Uri)) {
                    await launchUrl(url as Uri);
                  } else {
                    throw 'Could not launch $url';
                  }
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
        const SizedBox(height: 30),
        const Divider(height: 0),
        Card(
          child: ListTile(
            title: const Text('Afetzede Bildir'),
            textColor: Colors.white,
            tileColor: Colors.blue[500],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AfetzedeCikarmaFormu()),
              );
            },
          ),
        ),
      ],
    );
  }
}
