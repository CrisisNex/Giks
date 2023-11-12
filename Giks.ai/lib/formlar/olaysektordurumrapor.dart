import 'package:flutter/material.dart';

class OlaySektorDurumRaporFormu extends StatefulWidget {
  const OlaySektorDurumRaporFormu({Key? key}) : super(key: key);

  @override
  _OlaySektorDurumRaporFormuState createState() =>
      _OlaySektorDurumRaporFormuState();
}

class _OlaySektorDurumRaporFormuState extends State<OlaySektorDurumRaporFormu> {
  late String olayraporu;
  late String sektorraporu;
  late String sektorKimlik;
  late String sektorAdi;
  late int usarEkipSayisiAgir;
  late int usarEkipSayisiOrta;
  late int usarEkipSayisiDiger;
  late int toplamCalismaAlaniSayisi;
  late int calismaAlaniDurumASR3;
  late int calismaAlaniDurumASR4;
  late int calismaAlaniDurumASR5;
  late int aktifCalismaAlaniSayisi;
  late int beklemedekiCalismaAlaniSayisi;
  late int tamamlanmisCalismaAlaniSayisi;
  late String mevcutDonemAfetzedeler;
  late String genelAfetzedeler;
  late int kurtarilanCanliAfetzedeler;
  late int cikarilanOluAfetzedeler;
  late String digerFaaliyetler;
  late String emniyetKonulari;
  late String guvenlikDurumu;
  late DateTime baslangicTarihi;
  late TimeOfDay baslangicSaati;
  late DateTime operasyonelRaporBitisTarihi;
  late TimeOfDay operasyonelRaporBitisSaati;
  late String sonrakiOperasyonAmac;
  late String ilaveEkipIhtiyaci;
  late String kaynakIhtiyaci;
  late String uygunEkipVarMi;
  late String planlamaDigerKonular;
  late String formuDolduranIsim;
  late String formuDolduranUnvan;
  late DateTime planlananBaslangicTarihi;
  late TimeOfDay planlananBaslangicSaati;
  late DateTime planlananBitisTarihi;
  late TimeOfDay planlananBitisSaati;

  @override
  void initState() {
    super.initState();
    planlananBaslangicTarihi = DateTime.now(); // Düzeltildi
    planlananBaslangicSaati = TimeOfDay.now(); // Düzeltildi
    planlananBitisTarihi = DateTime.now();
    planlananBitisSaati = TimeOfDay.now();
    olayraporu = '';
    sektorraporu = '';
    sektorKimlik = '';
    sektorAdi = '';
    usarEkipSayisiAgir = 0;
    usarEkipSayisiOrta = 0;
    usarEkipSayisiDiger = 0;
    toplamCalismaAlaniSayisi = 0;
    calismaAlaniDurumASR3 = 0;
    calismaAlaniDurumASR4 = 0;
    calismaAlaniDurumASR5 = 0;
    aktifCalismaAlaniSayisi = 0;
    beklemedekiCalismaAlaniSayisi = 0;
    tamamlanmisCalismaAlaniSayisi = 0;
    mevcutDonemAfetzedeler = '';
    genelAfetzedeler = '';
    kurtarilanCanliAfetzedeler = 0;
    cikarilanOluAfetzedeler = 0;
    digerFaaliyetler = '';
    emniyetKonulari = '';
    guvenlikDurumu = '';
    baslangicTarihi = DateTime.now();
    baslangicSaati = TimeOfDay.now();
    operasyonelRaporBitisTarihi = DateTime.now();
    operasyonelRaporBitisSaati = TimeOfDay.now();
    sonrakiOperasyonAmac = '';
    ilaveEkipIhtiyaci = '';
    kaynakIhtiyaci = '';
    uygunEkipVarMi = '';
    planlamaDigerKonular = '';
    formuDolduranIsim = '';
    formuDolduranUnvan = '';
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

  Future<void> selectPlanlananBaslangicSaati(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        planlananBaslangicSaati = selectedTime;
      });
    }
  }

  Future<void> selectPlanlananBaslangicTarihi(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        planlananBaslangicTarihi = selectedDate;
      });
    }
  }

  Future<void> selectplanlananBitisSaati(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        planlananBitisSaati = selectedTime;
      });
    }
  }

  Future<void> selectplanlananBitisTarihi(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        planlananBitisTarihi = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text('Olay/Sektör Durum Raporu Formu'),
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
              'Olay/Sektör Durum Raporu Formu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                olayraporu = value;
              });
            },
            decoration: const InputDecoration(labelText: '1 Olay Raporu'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                sektorraporu = value;
              });
            },
            decoration: const InputDecoration(labelText: '2 Sektör Raporu'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                sektorKimlik = value;
              });
            },
            decoration: const InputDecoration(labelText: '3 Sektör Kimliği'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                sektorAdi = value;
              });
            },
            decoration: const InputDecoration(labelText: '4 Sektör Adı'),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Raporlama Dönemi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => selectBaslangicTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicTarihi != null
                  ? '5 Başlangıç Tarihi Seçiniz: ${baslangicTarihi.day}/${baslangicTarihi.month}/${baslangicTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectBaslangicSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicSaati != null
                  ? '6 Başlangıç Saati Seçiniz: ${baslangicSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => selectBaslangicTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisTarihi != null
                  ? '7 Bitiş Tarihi Seçiniz: ${operasyonelRaporBitisTarihi.day}/${operasyonelRaporBitisTarihi.month}/${operasyonelRaporBitisTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectBaslangicSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisSaati != null
                  ? '8 Bitiş Saati Seçiniz: ${operasyonelRaporBitisSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Durum (bu raporlama dönemi)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                usarEkipSayisiAgir = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(labelText: '9 USAR Ekibi Sayısı (Ağır)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                usarEkipSayisiOrta = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(labelText: ' USAR Ekibi Sayısı (Orta)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                usarEkipSayisiDiger = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(labelText: ' USAR Ekibi Sayısı (Diğer)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                toplamCalismaAlaniSayisi = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '10 Tespit edilen Toplam Çalışma Alanı Sayısı'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                calismaAlaniDurumASR3 = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '11 Çalışma Alanı Durumu (ASR 3)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                calismaAlaniDurumASR4 = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: 'Çalışma Alanı Durumu (ASR 4)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                calismaAlaniDurumASR5 = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: 'Çalışma Alanı Durumu (ASR 5)'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                aktifCalismaAlaniSayisi = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '12 Aktif Çalışma Alanı Sayısı'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                beklemedekiCalismaAlaniSayisi = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '13 Beklemedeki Çalışma Alanı Sayısı'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                tamamlanmisCalismaAlaniSayisi = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '14 Tamamlanmış Çalışma Alanı Sayısı'),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Afetzede Durum Bilgisi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                mevcutDonemAfetzedeler = value;
              });
            },
            decoration: const InputDecoration(
                labelText: '15 Mevcut Dönem Afetzede Durumu'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                kurtarilanCanliAfetzedeler = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '16 Kurtarılan Canlı Afetzede Sayısı'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                cikarilanOluAfetzedeler = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: '17 Çıkarılan Ölü Afetzede Sayısı'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                digerFaaliyetler = value;
              });
            },
            decoration:
                const InputDecoration(labelText: '18 Diğer Faaliyetler'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                emniyetKonulari = value;
              });
            },
            decoration: const InputDecoration(labelText: '19 Emniyet Konuları'),
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                guvenlikDurumu = value;
              });
            },
            decoration: const InputDecoration(labelText: '20 Güvenlik Durumu'),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Planlama',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Sonraki Operasyon/Raporlama Dönemi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => selectPlanlananBaslangicTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicTarihi != null
                  ? '21 Başlangıç Tarihi Seçiniz: ${baslangicTarihi.day}/${baslangicTarihi.month}/${baslangicTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectPlanlananBaslangicSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              baslangicSaati != null
                  ? '22 Başlangıç Saati Seçiniz: ${baslangicSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => selectplanlananBitisTarihi(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisTarihi != null
                  ? '23 Bitiş Tarihi Seçiniz: ${operasyonelRaporBitisTarihi.day}/${operasyonelRaporBitisTarihi.month}/${operasyonelRaporBitisTarihi.year}'
                  : 'Başlangıç Tarihi Seç',
            ),
          ),
          ElevatedButton(
            onPressed: () => selectplanlananBitisSaati(context),
            child: Text(
              // ignore: unnecessary_null_comparison
              operasyonelRaporBitisSaati != null
                  ? '24 Bitiş Saati Seçiniz: ${operasyonelRaporBitisSaati.format(context)}'
                  : 'Başlangıç Saati Seç',
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              setState(() {
                sonrakiOperasyonAmac = value;
              });
            },
            decoration: const InputDecoration(
              labelText: '25 Sonraki Operasyon Dönemi Amacı',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                ilaveEkipIhtiyaci = value;
              });
            },
            decoration: const InputDecoration(
              labelText: '26 İlave Ekip İhtiyacı',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                kaynakIhtiyaci = value;
              });
            },
            decoration: const InputDecoration(
              labelText: '27 Kaynak İhtiyacı',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                uygunEkipVarMi = value;
              });
            },
            decoration: const InputDecoration(
              labelText: '28 Uygun Ekip Var mı?',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                planlamaDigerKonular = value;
              });
            },
            decoration: const InputDecoration(
              labelText: '29 Planlama Diğer Konular',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                formuDolduranIsim = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Formu Dolduran İsim Soy İsim',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                formuDolduranUnvan = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Formu Dolduran Unvan',
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
