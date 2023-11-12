import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enkazdan Çıkarılan Hayvan Bilgileri Formu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EnkazdanCikarilanHayvanForm(),
    );
  }
}

class EnkazdanCikarilanHayvanForm extends StatefulWidget {
  const EnkazdanCikarilanHayvanForm({Key? key});

  @override
  _EnkazdanCikarilanHayvanFormState createState() =>
      _EnkazdanCikarilanHayvanFormState();
}

class _EnkazdanCikarilanHayvanFormState
    extends State<EnkazdanCikarilanHayvanForm> {
  final _formKey = GlobalKey<FormState>();
  final List<EnkazdanCikarilanHayvan> hayvanlar = [];

  String formKodu = '';
  String formDuzenlemeTarihi = '';
  String formDuzenlemeSaati = '';
  String formVersiyonu = '';
  String formVerileriKapsadigiIl = '';
  String formVerileriKapsadigiIlce = '';

  String hazirlayanAdiSoyadi = '';
  String hazirlayanUnvani = '';
  String hazirlayanImza = '';
  String kurumIli = '';
  String kurumAdi = '';
  String hgEkipAdi = '';
  String ekiptekiGorevi = '';
  String belgeNo = '';

  void ekleEnkazdanCikarilanHayvan() {
    hayvanlar.add(EnkazdanCikarilanHayvan(
        id: '',
        adet: '',
        tur: '',
        durum: '',
        sevkEdildigiYer: '',
        teslimTarihi: '',
        teslimTesellumBelgesi: ''));
  }

  @override
  Widget build(BuildContext context) {
    Column hayvanBilgileri = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0),
        const Text(
          'ENKAZDAN ÇIKARILAN HAYVAN BİLGİSİ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'ID'),
                onChanged: (value) {
                  hayvanlar.last.id = value;
                },
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Tür'),
                onChanged: (value) {
                  hayvanlar.last.tur = value;
                },
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Adet'),
                onChanged: (value) {
                  hayvanlar.last.adet = value;
                },
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Durum'),
                onChanged: (value) {
                  hayvanlar.last.durum = value;
                },
              ),
            ),
          ],
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Sevk Edildiği Yer'),
          onChanged: (value) {
            hayvanlar.last.sevkEdildigiYer = value;
          },
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Teslim Tarihi'),
                onChanged: (value) {
                  hayvanlar.last.teslimTarihi = value;
                },
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Teslim-Tesellüm Belgesi No(Ek-3)'),
                onChanged: (value) {
                  hayvanlar.last.teslimTesellumBelgesi = value;
                },
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enkazdan Çıkarılan Hayvan Bilgileri Formu'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
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
                  'Enkazdan Çıkarılan Hayvan Bilgileri Formu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Afet Türü/Adı',
                ),
                onChanged: (value) {
                  // TODO: Handle Afet Türü/Adı input
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Form Kodu',
                ),
                onChanged: (value) {
                  setState(() {
                    formKodu = value;
                  });
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Form Düzenleme Tarihi',
                      ),
                      onChanged: (value) {
                        setState(() {
                          formDuzenlemeTarihi = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Form Düzenleme Saati',
                      ),
                      onChanged: (value) {
                        setState(() {
                          formDuzenlemeSaati = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Form Versiyonu',
                ),
                onChanged: (value) {
                  setState(() {
                    formVersiyonu = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Form Verilerinin Kapsadığı İl',
                ),
                onChanged: (value) {
                  setState(() {
                    formVerileriKapsadigiIl = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'İlçe',
                ),
                onChanged: (value) {
                  setState(() {
                    formVerileriKapsadigiIlce = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              hayvanBilgileri,
              const SizedBox(height: 16.0),
              const SizedBox(height: 32.0),
              const Text(
                'HAZIRLAYANIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Adı Soyadı',
                ),
                onChanged: (value) {
                  setState(() {
                    hazirlayanAdiSoyadi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Unvanı',
                ),
                onChanged: (value) {
                  setState(() {
                    hazirlayanUnvani = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'İmza',
                ),
                onChanged: (value) {
                  setState(() {
                    hazirlayanImza = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Kurum İli',
                ),
                onChanged: (value) {
                  setState(() {
                    kurumIli = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Kurum Adı',
                ),
                onChanged: (value) {
                  setState(() {
                    kurumAdi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'HG Ekip Adı',
                ),
                onChanged: (value) {
                  setState(() {
                    hgEkipAdi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ekipteki Görevi',
                ),
                onChanged: (value) {
                  setState(() {
                    ekiptekiGorevi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Belge No',
                ),
                onChanged: (value) {
                  setState(() {
                    belgeNo = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form verilerini işleme geçirme işlemleri
                    // TODO: Form verilerini işleme geçirme işlemleri
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

class EnkazdanCikarilanHayvan {
  late final String id;
  late final String tur;
  late final String adet;
  late final String durum;
  late final String sevkEdildigiYer;
  late final String teslimTarihi;
  late final String teslimTesellumBelgesi;

  EnkazdanCikarilanHayvan({
    required this.id,
    required this.tur,
    required this.adet,
    required this.durum,
    required this.sevkEdildigiYer,
    required this.teslimTarihi,
    required this.teslimTesellumBelgesi,
  });
}
