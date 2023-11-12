import 'package:flutter/material.dart';

class AracTalepFormu extends StatefulWidget {
  const AracTalepFormu({super.key});

  @override
  _AracTalepFormuState createState() => _AracTalepFormuState();
}

class _AracTalepFormuState extends State<AracTalepFormu> {
  final _formKey = GlobalKey<FormState>();

  late String bildirenKisi;
  late String telefonNumarasi;
  late String konum;
  late String aracAdi;
  late String aracOzellikleri;
  late int adet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arac Talep Formu'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
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
                'Arac Talep Formu',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Bildiren Kişi'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bildiren kişiyi giriniz.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  bildirenKisi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Telefon Numarası'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Telefon numarasını giriniz.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  telefonNumarasi = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Konum Koordinatları'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Konumu giriniz.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  konum = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Araç Adı'),
              maxLength: 20,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Araç adını giriniz.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  aracAdi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Araç Özellikleri (Opsiyonel)'),
              onChanged: (value) {
                setState(() {
                  aracOzellikleri = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Adet'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Adeti giriniz.';
                }
                if (int.tryParse(value) == null) {
                  return 'Geçerli bir sayı giriniz.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  adet = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form doğrulandığında yapılacak işlemler
                  // Örneğin, form verilerini bir API'ye gönderme

                  // Örnek bir işlem
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form gönderildi')),
                  );
                }
              },
              child: const Text('Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Araç Talep Formu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AracTalepFormu(),
    );
  }
}
