import 'package:flutter/material.dart';

class UsarGorevSonrasiRaporFormu extends StatefulWidget {
  const UsarGorevSonrasiRaporFormu({super.key});

  @override
  _UsarGorevSonrasiRaporFormuState createState() =>
      _UsarGorevSonrasiRaporFormuState();
}

class _UsarGorevSonrasiRaporFormuState
    extends State<UsarGorevSonrasiRaporFormu> {
  final _formKey = GlobalKey<FormState>();
  late String ekipAdi;
  late String gorev;
  late String genelDegerlendirme;
  late String hazirlik;
  late String seferberlik;
  late String lemaKoordinasyon;
  late String osoccKoordinasyon;
  late String digerEkipler;
  late String harekatUssu;
  late String ekipYonetimi;
  late String lojistik;
  late String arama;
  late String kurtarma;
  late String tibbi;
  late String seferberlikSonlandirma;
  late String alinanDersler;
  late String oneriler;
  late String bilgileriTeminEden;
  late String irtibatBilgileri;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('USAR Görev Sonrası Raporu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const Image(
                image: AssetImage('images/logo_final.png'),
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'USAR Görev Sonrası Raporu',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.1 Ekibin Adı'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ekibin adını giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    ekipAdi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.2 Görev'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Görevi giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    gorev = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: '2.3 Genel Değerlendirme'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Genel değerlendirmeyi giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    genelDegerlendirme = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.4 Hazırlık'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hazırlığı giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    hazirlik = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.5 Seferberlik'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Seferberliği giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    seferberlik = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '2.6 Operasyonlar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: '2.6.1 LEMA ile Koordinasyon'),
                onChanged: (value) {
                  setState(() {
                    lemaKoordinasyon = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: '2.6.2 OSOCC ile Koordinasyon'),
                onChanged: (value) {
                  setState(() {
                    osoccKoordinasyon = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: '2.6.3 Diğer Ekiplerle İşbirliği'),
                onChanged: (value) {
                  setState(() {
                    digerEkipler = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: '2.6.4 Harekat Üssü'),
                onChanged: (value) {
                  setState(() {
                    harekatUssu = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: '2.6.5 Ekip Yönetimi'),
                onChanged: (value) {
                  setState(() {
                    ekipYonetimi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.6.6 Lojistik'),
                onChanged: (value) {
                  setState(() {
                    lojistik = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.6.7 Arama'),
                onChanged: (value) {
                  setState(() {
                    arama = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.6.8 Kurtarma'),
                onChanged: (value) {
                  setState(() {
                    kurtarma = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.6.9 Tıbbi'),
                onChanged: (value) {
                  setState(() {
                    tibbi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: '2.7 Seferberliğin Sonlandırılması'),
                onChanged: (value) {
                  setState(() {
                    seferberlikSonlandirma = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: '2.8 Alınan Dersler'),
                onChanged: (value) {
                  setState(() {
                    alinanDersler = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '2.9 Öneriler'),
                onChanged: (value) {
                  setState(() {
                    oneriler = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: '2.10 Bilgileri Temin Eden'),
                onChanged: (value) {
                  setState(() {
                    bilgileriTeminEden = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: '2.11 İrtibat Bilgileri'),
                onChanged: (value) {
                  setState(() {
                    irtibatBilgileri = value;
                  });
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form geçerli olduğunda yapılacak işlemler
                    // Örneğin, raporu kaydet veya gönder
                  }
                },
                child: const Text('Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
