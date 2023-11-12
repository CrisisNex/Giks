import 'package:flutter/material.dart';
import 'aracgetir.dart';

class WaterForm extends StatefulWidget {
  @override
  final Key? key;
  const WaterForm({this.key});

  @override
  _WaterFormState createState() => _WaterFormState();
}

class _WaterFormState extends State<WaterForm> {
  int _suAmount = 0;
  int _foodAmount = 0;
  int _yakitAmount = 0;
  final TextEditingController _ekipnameController = TextEditingController();

  String selectedClass = 'Hafif Sınıf Arama Kurtarma';
  List<String> classes = [
    'Hafif Sınıf Arama Kurtarma',
    'Orta Sınıf Arama Kurtarma',
    'Ağır Sınıf Arama Kurtarma'
  ];

  Map<String, int> itemCounts = {
    'Beton Kırıcı 23 kg': 0,
    'Beton Kırıcı 23 kg Uçları': 0,
    'Beton Kırıcı Delici 11 kg': 0,
    'Beton Kırıcı Delici 5 kg': 0,
    'Darbeli Manivela Seti': 0,
    'Kesme Ayırma Güç Ünitesi': 0,
    'Ayırma Aparatı': 0,
    'Kesme Aparatı': 0,
    'Hidrolik Kriko': 0,
    'Ayırma Zincir Aparatı': 0,
    'Ayırma Destek Aparatı': 0,
    'Jeneratör (Az 10KW)': 0,
    'Kombi Testere': 0,
    'Beton Kesme Makinesi': 0,
    'Beton Kesme Ucu (Bakalit)': 0,
    'Zorla Girme Aparatı': 0,
    'Tilki Kuyruğu Testere': 0,
    'Görüntülü Canlı Arama Cihazı': 0,
    'Akustik Dinleme Cihazı': 0,
    'Testere': 0,
    'Gözlük': 0,
    'Maske': 0,
    'Balyoz': 0,
    'Ceset Torbası': 0,
    'Destek Seti (142 cm)': 0,
    'Destek Seti (64 cm)': 0,
    'Destek Seti (48 cm)': 0,
    'Destek Seti (94 cm)': 0,
    'Destek Seti (30 cm)': 0,
    'Destek Seti (91 cm)': 0,
    'Destek Seti (61 cm)': 0,
    'Destek Seti (15 cm)': 0,
    'Destek Seti (41 cm)': 0,
    'Destek Seti (diğer)': 0,
    'Hava Yastığı (100)': 0,
    'Hava Yastığı (75)': 0,
    'Hava Yastığı (65)': 0,
    'Hava Yastığı (40)': 0,
    'Hava Yastığı Hortum Aparatları': 0,
    'Hava Tüpü': 0,
    'Kaşık Sedye': 0,
    'Yakıt Bidonu': 0,
    'Spiral Kesme': 0,
    'Ara Kablo': 0,
    'Projeksiyon Seti': 0,
    'Dalgıç Pompası': 0,
    'Dalgıç Pompası Emme Basma Borusu': 0,
    'Megafon': 0,
    'Baret': 0,
    'Kazma': 0,
    'Kürek': 0,
    'Çelik Halat': 0,
    'Çekiç (3kg)': 0,
    'Demir Makası': 0,
    'Manivela Demiri': 0,
    'El Feneri': 0,
    'Toz Maskesi': 0,
    'Eldiven': 0,
    'Takım Sandığı': 0,
    'Teleskopik Merdiven': 0,
    'İlk Yardım Çantası': 0,
    'Sırt Çantası (Kişisel Güvenlik)': 0,
    'Ayarlanabilir Üçgen Kurtarma Kemeri': 0,
    'Full Body': 0,
    'Halat (Statik 11mm, 100 Metre)': 0,
    'Halat (Statik 10mm, 100 Metre)': 0,
    'Jumar (El)': 0,
    'Jumar (Gergi)': 0,
    'Karabina (HMS)': 0,
    'Karabina (D)': 0,
    'Karabina (Oval)': 0,
    'Sekizli Demir': 0,
    'Makara (Alüminyum, Açılabilir)': 0,
    'Makara (Çelik, Çiftli)': 0,
    'Makara (Tandem)': 0,
    'Perlon (30mm)': 0,
    'Pursuk (7mm)': 0,
    'Stopdesender': 0,
    'Koruyucu Gözlük': 0,
    'Cıvı Tabancası': 0,
    'Tüp Dolum Kompresörü': 0,
    'Temiz Hava Solunum Cihazı': 0,
    'Liberator': 0,
    'Çoklu Gaz Tespit Cihazı': 0,
    'Halat Fırlatma Tüfeği': 0,
    'Çift Yönlü Temiz Hava Fanı': 0,
    'Trafik Yönlendirme İşaretleri': 0,
    'İp Merdiven': 0,
    'Üç Ayak Sehpa Takımı': 0,
    'Akülü Demir Kesme': 0,
    'Oksi Asetilen Cihazı': 0,
    'Çelik Tel Kesme Makası': 0,
    'Plastik Destek Takozları': 0,
    'Hidrolik Manuel Kurtarma Seti': 0,
    'Hijyen Seti': 0,
    'Beton Blok Kesme Su Pompası (Dahil)': 0,
    'Akülü Demir Kesme (2)': 0,
    'Akülü Kombi Kesme Ayırma Ünitesi': 0,
    'Hidrolik Kriko (36)': 0,
    'Ayırma Zincir Aparatı (2)': 0,
    'Ayırma Destek Aparatı (2)': 0,
    'Çok Amaç Sedye': 0,
    'Motopomp ve Hortumları': 0,
    'Aydınlatma Balonu': 0,
    'LED Lambalı Işık Çantası (20)': 0,
    'LED Lambalı Işık Çantası (45)': 0,
    'LED Lambalı Işık Çantası (80)': 0,
    'Araç Üzerine Monte Sabit Jeneratörler': 0,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Malzeme Manifestosu',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Malzeme Manifestosu'),
          ),
          body: ListView(
            children: [
              const SizedBox(height: 1),
              const Image(
                image: AssetImage('images/logo_final.png'),
                width: 200,
                height: 200,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Malzeme Manifestosu',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Arama kurtarma sınıfınızı belirtiniz:',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          value: selectedClass,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 16),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedClass = newValue!;
                            });
                          },
                          items: classes.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            },
                          ).toList(),
                        ),
                        // Second row content goes here
                      ],
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: _ekipnameController,
                decoration: const InputDecoration(
                  labelText: 'Ekip Adınız',
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sabit Malzemeler',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
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
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tükenen Malzemeler',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.local_drink),
                title: const Text('Getireceğim Su'),
                trailing: Text('$_suAmount litre'),
              ),
              Slider(
                value: _suAmount.toDouble(),
                min: 0,
                max: 500,
                divisions: 100,
                label: '$_suAmount litre',
                onChanged: (double value) {
                  setState(() {
                    _suAmount = value.round();
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text(
                    'Getireceğim Yemek\n(bir kişinin 1 günlük yemeği)'),
                trailing: Text('$_foodAmount Gün'),
              ),
              Slider(
                value: _foodAmount.toDouble(),
                min: 0,
                max: 100,
                divisions: 100,
                label: '$_foodAmount Gün',
                onChanged: (double value) {
                  setState(() {
                    _foodAmount = value.round();
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.oil_barrel),
                title: const Text('Getireceğim Yakıt'),
                trailing: Text('$_yakitAmount litre'),
              ),
              Slider(
                value: _yakitAmount.toDouble(),
                min: 0,
                max: 500,
                divisions: 100,
                label: '$_yakitAmount Litre',
                onChanged: (double value) {
                  setState(() {
                    _yakitAmount = value.round();
                  });
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AracgetirmeForm()),
                  );
                  // Gönder butonuna tıklandığında yapılacak işlemler
                },
                child: const Text('Malzeme Manifestosunu Gönder'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
