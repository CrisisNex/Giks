import 'package:flutter/material.dart';

class CalismaAlaniTriyajFormu extends StatefulWidget {
  const CalismaAlaniTriyajFormu({super.key});

  @override
  _CalismaAlaniTriyajFormuState createState() =>
      _CalismaAlaniTriyajFormuState();
}

class _CalismaAlaniTriyajFormuState extends State<CalismaAlaniTriyajFormu> {
  late TextEditingController calismaAlaniKimligiController;
  late TextEditingController gpsKoordinatlariController;
  late TextEditingController adresController;
  late TextEditingController calismaAlaniSiniriController;
  late TextEditingController ekipKimligiController;
  late TextEditingController tarihController;
  late TextEditingController saatController;
  late TextEditingController binaKullanimiController;
  late TextEditingController yapiTuruController;
  late TextEditingController yuzOlcusuController;
  late TextEditingController katSayisiController;
  late TextEditingController bodrumKatiSayisiController;
  late TextEditingController toplamKayipBilinmeyenController;
  late TextEditingController canliTeyitSayisiController;
  late TextEditingController triajKategorisiController;
  late TextEditingController hasarDerecesiController;
  late TextEditingController canliAfetzedelerController;
  late TextEditingController cokmeTuruController;
  late TextEditingController olaganustuTehlikelerController;
  late TextEditingController ihtiyacDuyulanCalismaController;
  late TextEditingController yerelEmniyetDurumuController;
  late TextEditingController digerBilgilerController;
  late TextEditingController dolduranIsimController;
  late TextEditingController dolduranUnvanController;
  late TextEditingController detayController;

  bool aramaDurumu = false;
  bool iksaPayandaDurumu = false;
  bool kirGecitDurumu = false;
  bool kaldirmaHareketDurumu = false;
  bool halatCalismaDurumu = false;
  bool tibbiIhtiyacDurumu = false;

  @override
  void initState() {
    super.initState();
    calismaAlaniKimligiController = TextEditingController();
    gpsKoordinatlariController = TextEditingController();
    adresController = TextEditingController();
    calismaAlaniSiniriController = TextEditingController();
    ekipKimligiController = TextEditingController();
    tarihController = TextEditingController();
    saatController = TextEditingController();
    binaKullanimiController = TextEditingController();
    yapiTuruController = TextEditingController();
    yuzOlcusuController = TextEditingController();
    katSayisiController = TextEditingController();
    bodrumKatiSayisiController = TextEditingController();
    toplamKayipBilinmeyenController = TextEditingController();
    canliTeyitSayisiController = TextEditingController();
    triajKategorisiController = TextEditingController();
    hasarDerecesiController = TextEditingController();
    canliAfetzedelerController = TextEditingController();
    cokmeTuruController = TextEditingController();
    olaganustuTehlikelerController = TextEditingController();
    ihtiyacDuyulanCalismaController = TextEditingController();
    yerelEmniyetDurumuController = TextEditingController();
    digerBilgilerController = TextEditingController();
    dolduranIsimController = TextEditingController();
    dolduranUnvanController = TextEditingController();
    detayController = TextEditingController();
  }

  @override
  void dispose() {
    detayController.dispose();
    calismaAlaniKimligiController.dispose();
    gpsKoordinatlariController.dispose();
    adresController.dispose();
    calismaAlaniSiniriController.dispose();
    ekipKimligiController.dispose();
    tarihController.dispose();
    saatController.dispose();
    binaKullanimiController.dispose();
    yapiTuruController.dispose();
    yuzOlcusuController.dispose();
    katSayisiController.dispose();
    bodrumKatiSayisiController.dispose();
    toplamKayipBilinmeyenController.dispose();
    canliTeyitSayisiController.dispose();
    triajKategorisiController.dispose();
    hasarDerecesiController.dispose();
    canliAfetzedelerController.dispose();
    cokmeTuruController.dispose();
    olaganustuTehlikelerController.dispose();
    ihtiyacDuyulanCalismaController.dispose();
    yerelEmniyetDurumuController.dispose();
    digerBilgilerController.dispose();
    dolduranIsimController.dispose();
    dolduranUnvanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Çalışma Alanı Triyaj Formu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                'Çalışma Alanı Triyaj Formu',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              controller: calismaAlaniKimligiController,
              decoration:
                  const InputDecoration(labelText: 'Çalışma Alanı Kimliği'),
            ),
            TextFormField(
              controller: gpsKoordinatlariController,
              decoration: const InputDecoration(labelText: 'GPS Koordinatları'),
            ),
            const SizedBox(width: 10.0),
            const Image(
              image: AssetImage('images/harita.png'),
              width: 200,
              height: 400,
            ),
            TextFormField(
              controller: adresController,
              decoration: const InputDecoration(labelText: 'Adres'),
            ),
            TextFormField(
              controller: calismaAlaniSiniriController,
              decoration:
                  const InputDecoration(labelText: 'Çalışma Alanı Sınırları'),
            ),
            TextFormField(
              controller: ekipKimligiController,
              decoration: const InputDecoration(labelText: 'Ekip Kimliği'),
            ),
            TextFormField(
              controller: tarihController,
              decoration: const InputDecoration(labelText: 'Tarih'),
            ),
            TextFormField(
              controller: saatController,
              decoration: const InputDecoration(labelText: 'Saat'),
            ),
            TextFormField(
              controller: binaKullanimiController,
              decoration: const InputDecoration(labelText: 'Bina Kullanımı'),
            ),
            TextFormField(
              controller: yapiTuruController,
              decoration: const InputDecoration(labelText: 'Yapı Türü'),
            ),
            TextFormField(
              controller: yuzOlcusuController,
              decoration: const InputDecoration(labelText: 'Yüz Ölçüsü'),
            ),
            TextFormField(
              controller: katSayisiController,
              decoration: const InputDecoration(labelText: 'Kat Sayısı'),
            ),
            TextFormField(
              controller: bodrumKatiSayisiController,
              decoration:
                  const InputDecoration(labelText: 'Bodrum Katı Sayısı'),
            ),
            TextFormField(
              controller: toplamKayipBilinmeyenController,
              decoration:
                  const InputDecoration(labelText: 'Toplam Kayıp/Bilinmeyen'),
            ),
            TextFormField(
              controller: canliTeyitSayisiController,
              decoration:
                  const InputDecoration(labelText: 'Canlı Teyit Sayısı'),
            ),
            TextFormField(
              controller: triajKategorisiController,
              decoration: const InputDecoration(labelText: 'Triage Kategorisi'),
            ),
            TextFormField(
              controller: hasarDerecesiController,
              decoration: const InputDecoration(labelText: 'Hasar Derecesi'),
            ),
            TextFormField(
              controller: canliAfetzedelerController,
              decoration: const InputDecoration(labelText: 'Canlı Afetzedeler'),
            ),
            TextFormField(
              controller: cokmeTuruController,
              decoration: const InputDecoration(labelText: 'Çökme Türü'),
            ),
            TextFormField(
              controller: olaganustuTehlikelerController,
              decoration:
                  const InputDecoration(labelText: 'Olağanüstü Tehlikeler'),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Bu Çalışma Alanında ihtiyaç duyulabilecek ana USAR operasyonlarını değerlendirin',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: ihtiyacDuyulanCalismaController,
              decoration:
                  const InputDecoration(labelText: 'İhtiyaç Duyulan Çalışma'),
            ),
            CheckboxListTile(
              title: const Text('Köpek ile/teknik arama'),
              value: aramaDurumu,
              onChanged: (bool? value) {
                setState(() {
                  aramaDurumu = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('İksa ve payanda'),
              value: iksaPayandaDurumu,
              onChanged: (bool? value) {
                setState(() {
                  iksaPayandaDurumu = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Kırma, Geçit Açma'),
              value: kirGecitDurumu,
              onChanged: (bool? value) {
                setState(() {
                  kirGecitDurumu = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Kaldırma ve Hareket Ettirme'),
              value: kaldirmaHareketDurumu,
              onChanged: (bool? value) {
                setState(() {
                  kaldirmaHareketDurumu = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Halatla/yüksekte çalışma'),
              value: halatCalismaDurumu,
              onChanged: (bool? value) {
                setState(() {
                  halatCalismaDurumu = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Tıbbi ihtiyaçlar'),
              value: tibbiIhtiyacDurumu,
              onChanged: (bool? value) {
                setState(() {
                  tibbiIhtiyacDurumu = value!;
                });
              },
            ),
            TextFormField(
              controller: detayController,
              decoration: const InputDecoration(labelText: 'Detay Ekleyiniz'),
            ),
            TextFormField(
              controller: yerelEmniyetDurumuController,
              decoration:
                  const InputDecoration(labelText: 'Yerel Emniyet Durumu'),
            ),
            TextFormField(
              controller: digerBilgilerController,
              decoration: const InputDecoration(labelText: 'Diğer Bilgiler'),
            ),
            TextFormField(
              controller: dolduranIsimController,
              decoration: const InputDecoration(labelText: 'Dolduran İsim'),
            ),
            TextFormField(
              controller: dolduranUnvanController,
              decoration: const InputDecoration(labelText: 'Dolduran Ünvan'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // Form bilgilerini gönderme işlemleri burada yapılabilir.
              },
              child: const Text('Gönder'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
