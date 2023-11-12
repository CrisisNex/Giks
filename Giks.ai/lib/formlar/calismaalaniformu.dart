import 'package:flutter/material.dart';

class CalismaAlaniFormu extends StatefulWidget {
  const CalismaAlaniFormu({Key? key}) : super(key: key);

  @override
  _CalismaAlaniFormuState createState() => _CalismaAlaniFormuState();
}

class _CalismaAlaniFormuState extends State<CalismaAlaniFormu> {
  String adres = '';
  late TimeOfDay baslangicSaati;
  late DateTime baslangicTarihi;
  late DateTime operasyonelRaporBitisTarihi;
  late TimeOfDay operasyonelRaporBitisSaati;
  late TextEditingController calismaAlanKimlikController;
  late TextEditingController gpsKoordinatlariControllerx;
  late TextEditingController gpsKoordinatlariControllery;
  late TextEditingController adresController;
  late TextEditingController calismaAlaniSiniriController;
  late TextEditingController baslangicTarihiController;
  late TextEditingController baslangicSaatiController;
  late TextEditingController ekipKimlik1Controller;
  late TextEditingController ekipKimlik2Controller;
  late TextEditingController asrSeviyesiController;
  late TextEditingController tamamlanmaDurumuController;
  late TextEditingController tamamlananKurtarmaSayisiController;
  late TextEditingController cikarilanOluSayisiController;
  late TextEditingController digerOperasyonelFaaliyetlerController;
  late TextEditingController serbestBirakilabilecekKaynaklarController;
  late TextEditingController yerelEmniyetGuvenlikDurumuController;
  late TextEditingController calismaalanikontakcontroller;
  late TextEditingController raporNumarasiController;
  late TextEditingController gorevTamamlandiController;
  late TextEditingController halaKayipKisiSayisiController;
  late TextEditingController canliKontakSayisiController;
  late TextEditingController eylemPlanininAnaHatlariController;
  late TextEditingController lojistikIhtiyaclarBilgilerController;
  late TextEditingController tahminiTamamlanmaTarihiController;
  late TextEditingController tamamlananAfetzedeCikarmaFormlariController;
  late TextEditingController dolduranIsimController;
  late TextEditingController dolduranUnvanController;
  bool gorevtamamlandi = false;
  bool gorevdevam = false;

  @override
  void initState() {
    super.initState();
    baslangicSaati = TimeOfDay.now();
    baslangicTarihi = DateTime.now();
    operasyonelRaporBitisTarihi = DateTime.now();
    operasyonelRaporBitisSaati = TimeOfDay.now();
    calismaAlanKimlikController = TextEditingController();
    gpsKoordinatlariControllerx = TextEditingController();
    gpsKoordinatlariControllery = TextEditingController();
    adresController = TextEditingController();
    calismaAlaniSiniriController = TextEditingController();
    baslangicTarihiController = TextEditingController();
    baslangicSaatiController = TextEditingController();
    ekipKimlik1Controller = TextEditingController();
    ekipKimlik2Controller = TextEditingController();
    asrSeviyesiController = TextEditingController();
    tamamlanmaDurumuController = TextEditingController();
    tamamlananKurtarmaSayisiController = TextEditingController();
    cikarilanOluSayisiController = TextEditingController();
    digerOperasyonelFaaliyetlerController = TextEditingController();
    serbestBirakilabilecekKaynaklarController = TextEditingController();
    yerelEmniyetGuvenlikDurumuController = TextEditingController();
    calismaalanikontakcontroller = TextEditingController();
    raporNumarasiController = TextEditingController();
    gorevTamamlandiController = TextEditingController();
    halaKayipKisiSayisiController = TextEditingController();
    canliKontakSayisiController = TextEditingController();
    eylemPlanininAnaHatlariController = TextEditingController();
    lojistikIhtiyaclarBilgilerController = TextEditingController();
    tahminiTamamlanmaTarihiController = TextEditingController();
    tamamlananAfetzedeCikarmaFormlariController = TextEditingController();
    dolduranIsimController = TextEditingController();
    dolduranUnvanController = TextEditingController();
  }

  Future<void> selectBaslangicSaati(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        baslangicSaati = selectedTime;
      });
    }
  }

  Future<void> selectBaslangicTarihi(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        baslangicTarihi = selectedDate;
      });
    }
  }

  Future<void> selectOperasyonelRaporBitisTarihi(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        operasyonelRaporBitisTarihi = selectedDate;
      });
    }
  }

  Future<void> selectOperasyonelRaporBitisSaati(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        operasyonelRaporBitisSaati = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Çalışma Alanı Formu'),
      ),
      body: ListView(
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
              'Çalışma Alanı Raporu Formu',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: calismaAlanKimlikController,
            decoration: const InputDecoration(
              labelText: 'E1. Çalışma Alanı Kimlik No',
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: gpsKoordinatlariControllerx,
                  decoration: const InputDecoration(
                    labelText: 'E.2 X Koordinatı',
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: TextFormField(
                  controller: gpsKoordinatlariControllery,
                  decoration: const InputDecoration(
                    labelText: 'E.2 Y Koordinatı',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          const Image(
            image: AssetImage('images/harita.png'),
            width: 200,
            height: 400,
          ),
          TextFormField(
            controller: adresController,
            decoration: const InputDecoration(
              labelText: 'E3. Adres',
            ),
          ),
          TextFormField(
            controller: calismaAlaniSiniriController,
            decoration: const InputDecoration(
              labelText: 'E4. Çalışma Alanı Sınırı açıklaması',
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Çalışma Alanı Durum Raporu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => selectBaslangicTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicTarihi != null
                  ? 'G2. Başlangıç Tarihi Seçiniz: ${baslangicTarihi.day}/${baslangicTarihi.month}/${baslangicTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectBaslangicSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicSaati != null
                  ? 'G1. Başlangıç Saati Seçiniz: ${baslangicSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Görevlendirilen Ekipler',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            controller: ekipKimlik1Controller,
            decoration: const InputDecoration(
              labelText: 'G3. Ekip Kimlik No 1',
            ),
          ),
          TextFormField(
            controller: ekipKimlik2Controller,
            decoration: const InputDecoration(
              labelText: 'G4. Ekip Kimlik No 2',
            ),
          ),
          TextFormField(
            controller: asrSeviyesiController,
            decoration: const InputDecoration(
              labelText: 'G5. Gerçekleştirilen ASR Seviyesi',
            ),
          ),
          TextFormField(
            controller: tamamlanmaDurumuController,
            decoration: const InputDecoration(
              labelText: 'G6. Tamamlanmış/Devam Ediyor Durumu',
            ),
          ),
          TextFormField(
            controller: tamamlananKurtarmaSayisiController,
            decoration: const InputDecoration(
              labelText: 'G7. Bu raporlama döneminde kurtarma sayısı',
            ),
          ),
          TextFormField(
            controller: cikarilanOluSayisiController,
            decoration: const InputDecoration(
              labelText: 'G8. Bu raporlama döneminde ölü sayısı',
            ),
          ),
          TextFormField(
            controller: digerOperasyonelFaaliyetlerController,
            decoration: const InputDecoration(
              labelText: 'G9. Çalışma Alanındaki diğer operasyonel faaliyetler',
            ),
          ),
          TextFormField(
            controller: serbestBirakilabilecekKaynaklarController,
            decoration: const InputDecoration(
              labelText: 'G10. Bölgeden serbest bırakılabilecek kaynaklar',
            ),
          ),
          TextFormField(
            controller: yerelEmniyetGuvenlikDurumuController,
            decoration: const InputDecoration(
              labelText: 'G11. Yerel emniyet ve güvenlik durumu:',
            ),
          ),
          TextFormField(
            controller: calismaalanikontakcontroller,
            decoration: const InputDecoration(
              labelText: 'G12. Operasyonla ilgili Çalışma Alanı kontakları:',
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Raporlama Dönemi',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => selectBaslangicTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisTarihi != null
                  ? 'G13. Bitiş Tarihi Seçiniz: ${operasyonelRaporBitisTarihi.day}/${operasyonelRaporBitisTarihi.month}/${operasyonelRaporBitisTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectBaslangicSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisSaati != null
                  ? 'G14. Bitiş Saati Seçiniz: ${operasyonelRaporBitisSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          TextFormField(
            controller: calismaalanikontakcontroller,
            decoration: const InputDecoration(
              labelText: 'G15. Rapor Numarası:',
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'G16. Görev durumu',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: gorevtamamlandi,
                onChanged: (value) {
                  setState(() {
                    gorevtamamlandi = value!;
                  });
                },
              ),
              const Text('Görev tamamlandı'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: gorevdevam,
                onChanged: (value) {
                  setState(() {
                    gorevdevam = value!;
                  });
                },
              ),
              const Text('Görev Devam'),
            ],
          ),
          TextFormField(
            controller: halaKayipKisiSayisiController,
            decoration: const InputDecoration(
              labelText: 'G17. Çalışma Alanı Hala Kayıp Kişi Sayısı',
            ),
          ),
          TextFormField(
            controller: canliKontakSayisiController,
            decoration: const InputDecoration(
              labelText: 'G18. Canlı Kontak Sayısı/Devam Eden Kurtarmalar',
            ),
          ),
          TextFormField(
            controller: eylemPlanininAnaHatlariController,
            decoration: const InputDecoration(
              labelText: 'G19. Sonraki Operasyon Eylem Planı',
            ),
          ),
          TextFormField(
            controller: lojistikIhtiyaclarBilgilerController,
            decoration: const InputDecoration(
              labelText: 'G20. Lojistik ihtiyaçlar ve diğer Bilgiler:',
            ),
          ),
          TextFormField(
            controller: tahminiTamamlanmaTarihiController,
            decoration: const InputDecoration(
              labelText: 'G21. Tahmini Tamamlanma Zamanı',
            ),
          ),
          TextFormField(
            controller: tamamlananAfetzedeCikarmaFormlariController,
            decoration: const InputDecoration(
              labelText:
                  'G23. Tamamlanan Afetzede Çıkarma formları Referans Numaraları',
            ),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                dolduranIsimController;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Formu Dolduran İsim Soyisim Unvan',
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // Formu gönder
            },
            child: const Text('Gönder'),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
