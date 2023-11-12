import 'package:akeks/gorevlianasayfa.dart';
import 'package:flutter/material.dart';


class AracgetirmeForm extends StatefulWidget {
  const AracgetirmeForm({Key? key}) : super(key: key);

  @override
  _AracgetirmeFormState createState() => _AracgetirmeFormState();
}

class _AracgetirmeFormState extends State<AracgetirmeForm> {
  final TextEditingController _ekipnameController = TextEditingController();
  Map<String, int> itemCounts = {
    'Hafif tonajlı (kapasite 1.000 kg. ya kadar) kurtarma aracı': 0,
    'Orta tonajlı (kapasite 1.000-3.500 kg. ya kadar) kurtarma aracı': 0,
    'Ağır tonajlı (kapasite 3.500 kg. Üzeri) kurtarma aracı': 0,
    '3 tonluk 4x4 kamyon (kar küreme aparatlı)': 0,
    '4x4 çift kabin off road dizayn’lı': 0,
    '4x4 satatıon vagon off road dizayn’lı': 0,
    'ATV': 0,
    'Dağ motoru': 0,
    'Snowtrak': 0,
    'Kar Motosikleti': 0,

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Araç Manifestosu',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Araç Manifestosu'),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 1),
            const Image(
              image: AssetImage('images/logo_final.png'),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Araç Manifestosu',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _ekipnameController,
              decoration: const InputDecoration(
                labelText: 'Ekip Adınız',
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: itemCounts.entries.map((entry) {
                String item = entry.key;
                int count = entry.value;

                return ListTile(
                  title: Text('$item: $count'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            if (count > 0) {
                              itemCounts[item] = count - 1;
                            }
                          });
                        },
                      ),
                      Text(
                        count.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.blue),
                        onPressed: () {
                          setState(() {
                            itemCounts[item] = count + 1;
                          });
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GorevliAnasayfa()),
                );
                // Gönder butonuna tıklandığında yapılacak işlemler
              },
              child: const Text('Araç Manifestosunu Gönder'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
