import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GorevBrifingFormu extends StatefulWidget {
  const GorevBrifingFormu({super.key});

  @override
  _GorevBrifingFormuState createState() => _GorevBrifingFormuState();
}

class _GorevBrifingFormuState extends State<GorevBrifingFormu> {
  final _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  late String calismaAlaniKimligi;
  late String gorevlendirilecekEkip;
  late String gorevVerilmeTarihi;
  late TimeOfDay gorevVerilmeSaati;
  String? imagePath;
  late String sektor;
  late String sehir;
  late String sokak;
  late double gpsKoordinatlari1En;
  late double gpsKoordinatlari1Boy;
  late double gpsKoordinatlari2En;
  late double gpsKoordinatlari2Boy;
  late String sektorAciklamasi;
  late String binaKullanimi;
  late String yapiTuru;
  late String yapibuyuklugu;
  late String cokmeHasarAciklamasi;
  late String asrSeviyesi;
  late String raporlamaSikligi;
  late String lojistikGereksinimler;
  late String erisimGuzergahi;
  late String sahaIrtibatlari;
  late String digerFaaliyetler;
  late String emniyetGuvenlikKonulari;
  late String genisAlanDegerlendirmeRaporu;
  late String calismaAlaniRaporu;
  late String oncekiCalismaAlaniRaporu;
  late String fotografDosyaAdlari;
  late String formuDolduranAdi;
  late String formuDolduranUnvan;

  @override
  void initState() {
    super.initState();
    calismaAlaniKimligi = '';
    gorevlendirilecekEkip = '';
    gorevVerilmeTarihi = '';
    gorevVerilmeSaati = TimeOfDay.now();
    sektor = '';
    sehir = '';
    sokak = '';
    gpsKoordinatlari1En = 0.0;
    gpsKoordinatlari1Boy = 0.0;
    gpsKoordinatlari2En = 0.0;
    gpsKoordinatlari2Boy = 0.0;
    sektorAciklamasi = '';
    binaKullanimi = '';
    yapiTuru = '';
    yapibuyuklugu = '';
    cokmeHasarAciklamasi = '';
    asrSeviyesi = '';
    raporlamaSikligi = '';
    lojistikGereksinimler = '';
    erisimGuzergahi = '';
    sahaIrtibatlari = '';
    digerFaaliyetler = '';
    emniyetGuvenlikKonulari = '';
    genisAlanDegerlendirmeRaporu = '';
    calismaAlaniRaporu = '';
    oncekiCalismaAlaniRaporu = '';
    fotografDosyaAdlari = '';
    formuDolduranAdi = '';
    formuDolduranUnvan = '';
  }

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        imagePath = pickedFile.path;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Görev Brifing Paketi'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Image(
              image: AssetImage('images/logo_final.png'),
              width: 200,
              height: 200,
            ),
            const Center(
              child: Text(
                'Görev Brifing Paketi',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Genel Bilgiler',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'A.0 Çalışma alanı kimliği'),
              onChanged: (value) {
                calismaAlaniKimligi = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'A.1 Görevlendirilecek ekip'),
              onChanged: (value) {
                gorevlendirilecekEkip = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'A.2 Görevin verildiği tarih [GG-AAA]'),
              onChanged: (value) {
                gorevVerilmeTarihi = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ' A.3 Görevin verildiği saat [sa:dk]'),
              onChanged: (value) {
                // Saat değerini uygun formata dönüştürmek için gereken işlemleri yapabilirsiniz
                // Örneğin: value.split(':') ile saat ve dakika değerlerine ayırabilirsiniz
                // Ardından DateTime sınıfını kullanarak saat değerini oluşturabilirsiniz
                // Bu örnekteki örnek bir kod kullanımıdır, ihtiyaçlarınıza göre düzenleyebilirsiniz
                List<String> saatDakika = value.split(':');
                int saat = int.parse(saatDakika[0]);
                int dakika = int.parse(saatDakika[1]);
                gorevVerilmeSaati = TimeOfDay(hour: saat, minute: dakika);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'A.4 Sektör'),
              onChanged: (value) {
                sektor = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'A.5 Şehir'),
              onChanged: (value) {
                sehir = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'A.6 Sokak/ Sokak No, Yer Adı'),
              onChanged: (value) {
                sokak = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText:
                      'A.7 GPS Koordinatları [En/Boy ±ddd.dddd°] (Çalışma Alanı veya Sektör Değerlendirmesi için)'),
              onChanged: (value) {
                // GPS koordinatlarını uygun formatta değerlendirmek için gereken işlemleri yapabilirsiniz
                // Örneğin: double.parse(value) ile koordinat değerlerini double türüne dönüştürebilirsiniz
                // Bu örnekteki örnek bir kod kullanımıdır, ihtiyaçlarınıza göre düzenleyebilirsiniz
                List<String> koordinatlar = value.split(' ');
                gpsKoordinatlari1En = double.parse(koordinatlar[0]);
                gpsKoordinatlari1Boy = double.parse(koordinatlar[1]);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText:
                      'A.8 GPS Koordinatları [En/Boy ±ddd.dddd°] (Sektör Değerlendirmesi için)'),
              onChanged: (value) {
                // GPS koordinatlarını uygun formatta değerlendirmek için gereken işlemleri yapabilirsiniz
                // Örneğin: double.parse(value) ile koordinat değerlerini double türüne dönüştürebilirsiniz
                // Bu örnekteki örnek bir kod kullanımıdır, ihtiyaçlarınıza göre düzenleyebilirsiniz
                List<String> koordinatlar = value.split(' ');
                gpsKoordinatlari2En = double.parse(koordinatlar[0]);
                gpsKoordinatlari2Boy = double.parse(koordinatlar[1]);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText:
                      'A.9 Sektör/çalışma alanı sınırları açıklaması (gerekirse)'),
              onChanged: (value) {
                sektorAciklamasi = value;
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'B. Görev Bilgileri',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'F.8 Bina Kullanımı'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen bina kullanımını girin.';
                }
                return null;
              },
              onSaved: (value) {
                binaKullanimi = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'F.9 Yapı Türü'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen yapı türünü girin.';
                }
                return null;
              },
              onSaved: (value) {
                yapiTuru = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'F.10 Yapı Büyüklüğü'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen yapı büyüklüğünü girin.';
                }
                return null;
              },
              onSaved: (value) {
                yapibuyuklugu = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'F.11 Çökme/Hasar Açıklaması'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen çökme/hasar açıklamasını girin.';
                }
                return null;
              },
              onSaved: (value) {
                cokmeHasarAciklamasi = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'B.1 ASR Seviyesi'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen ASR seviyesini girin.';
                }
                return null;
              },
              onSaved: (value) {
                asrSeviyesi = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'B.2 Raporlama Sıklığı'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen raporlama sıklığını girin.';
                }
                return null;
              },
              onSaved: (value) {
                raporlamaSikligi = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'B.3 Lojistik Gereksinimler'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen lojistik gereksinimleri girin.';
                }
                return null;
              },
              onSaved: (value) {
                lojistikGereksinimler = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'B.4 Erişim/Güzergah Bilgisi'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen erişim/güzergah bilgisini girin.';
                }
                return null;
              },
              onSaved: (value) {
                erisimGuzergahi = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'B.5 Saha İrtibatları'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen saha irtibatlarını girin.';
                }
                return null;
              },
              onSaved: (value) {
                sahaIrtibatlari = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'B.6 Diğer Faaliyetler'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen diğer faaliyetleri girin.';
                }
                return null;
              },
              onSaved: (value) {
                digerFaaliyetler = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'B.7 Emniyet/Güvenlik Konuları'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen emniyet/güvenlik konularını girin.';
                }
                return null;
              },
              onSaved: (value) {
                emniyetGuvenlikKonulari = value!;
              },
            ),
            const SizedBox(height: 26.0),
            const Text(
              'C. Ekler',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'C.1 Geniş Alan Değerlendirme Raporu'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen geniş alan değerlendirme raporunu girin.';
                }
                return null;
              },
              onSaved: (value) {
                genisAlanDegerlendirmeRaporu = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'C.2 Çalışma Alanı Raporu'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen çalışma alanı raporunu girin.';
                }
                return null;
              },
              onSaved: (value) {
                calismaAlaniRaporu = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'C.3 Önceki Çalışma Alanı Raporu'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen önceki çalışma alanı raporunu girin.';
                }
                return null;
              },
              onSaved: (value) {
                oncekiCalismaAlaniRaporu = value!;
              },
            ),
            const SizedBox(height: 10.0),
            Form(
              child: Column(
                children: [
                  if (imagePath != null)
                    Image.file(
                      File(imagePath!),
                      width: 150,
                      height: 150,
                    ),
                  ElevatedButton(
                    onPressed: _pickImage,
                    child: const Text('Fotoğraf Ekle (opsiyonel)'),
                  ),
                ],
              ),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Z.1  Formu Dolduran Adı'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen formu dolduran adını girin.';
                }
                return null;
              },
              onSaved: (value) {
                formuDolduranAdi = value!;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Z.2 Formu Dolduran Unvanı'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen formu dolduran unvanını girin.';
                }
                return null;
              },
              onSaved: (value) {
                formuDolduranUnvan = value!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Formu gönderme veya kaydetme işlemleri
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
