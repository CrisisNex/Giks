import 'package:flutter/material.dart';

class UsarEkipBilgiFormu extends StatefulWidget {
  const UsarEkipBilgiFormu({super.key});

  @override
  _UsarEkipBilgiFormuState createState() => _UsarEkipBilgiFormuState();
}

class _UsarEkipBilgiFormuState extends State<UsarEkipBilgiFormu> {
  final _formKey = GlobalKey<FormState>();
  late String ekipKimligi;
  late String ekipAdi;
  late String yasananUlke;
  late String kisiSayisi;
  late String kopekSayisi;
  late String ekipTuru;
  late String insaragSiniflandirmasi;
  late bool teknikArama = false;
  late bool kopekleArama = false;
  late bool kurtarma = false;
  late bool tibbi = false;
  late bool tehlikeliMaddeTespit = false;
  late bool yapiMuhendisleri = false;
  late bool rdcOsocc = false;
  late bool uc = false;
  late String digerKabiliyetler;
  late String kendineYeterlilikSu;
  late String kendineYeterlilikGida;
  late String beklenenVarisTarihi;
  late String beklenenVarisSaati;
  late String varisNoktasi;
  late String havaAraciTuru;
  late int ulasimKisiSayisi;
  late int ulasimKopekSayisi;
  late double ulasimDonanimTon;
  late double ulasimDonanimMetrekup;
  late double ikmallerBenzin;
  late double ikmallerDizel;
  late int ikmallerKesmeGaziSayisi;
  late String ikmallerKesmeGaziTur;
  late int ikmallerTibbiOksijenNo;
  late String ikmallerTibbiOksijenEbat;
  late String ikmallerBoOYerGereksinimi;
  late String ikmallerDigerLojistikIhtiyaclar;
  late String irtibatKisi1Adi;
  late String irtibatKisi1CepTelefonu;
  late String irtibatKisi1UyduTelefonu;
  late String irtibatKisi1Email;
  late String irtibatKisi2Adi;
  late String irtibatKisi2CepTelefonu;
  late String irtibatKisi2UyduTelefonu;
  late String irtibatKisi2Email;
  late String harekatUssuAdres;
  late String radyoFrekansi;
  late String booGPSKoordinatlari;
  late String formuDolduranIsim;
  late String formuDolduranUnvan;
  late String tarih;

  @override
  void initState() {
    super.initState();
    teknikArama = false;
    kopekleArama = false;
    kurtarma = false;
    tibbi = false;
    tehlikeliMaddeTespit = false;
    yapiMuhendisleri = false;
    rdcOsocc = false;
    uc = false;
    digerKabiliyetler = "";
    kendineYeterlilikSu = "";
    kendineYeterlilikGida = "";
    beklenenVarisTarihi = "";
    beklenenVarisSaati = "";
    varisNoktasi = "";
    havaAraciTuru = "";
    ulasimKisiSayisi = 0;
    ulasimKopekSayisi = 0;
    ulasimDonanimTon = 0.0;
    ulasimDonanimMetrekup = 0.0;
    ikmallerBenzin = 0.0;
    ikmallerDizel = 0.0;
    ikmallerKesmeGaziSayisi = 0;
    ikmallerKesmeGaziTur = "";
    ikmallerTibbiOksijenNo = 0;
    ikmallerTibbiOksijenEbat = "";
    ikmallerBoOYerGereksinimi = "";
    ikmallerDigerLojistikIhtiyaclar = "";
    irtibatKisi1Adi = "";
    irtibatKisi1CepTelefonu = "";
    irtibatKisi1UyduTelefonu = "";
    irtibatKisi1Email = "";
    irtibatKisi2Adi = "";
    irtibatKisi2CepTelefonu = "";
    irtibatKisi2UyduTelefonu = "";
    irtibatKisi2Email = "";
    harekatUssuAdres = "";
    radyoFrekansi = "";
    booGPSKoordinatlari = "";
    formuDolduranIsim = "";
    formuDolduranUnvan = "";
    tarih = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ekip Bilgi Formu'),
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
                'Ekip Bilgi Formu',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Ekip Bilgisi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Ekip Kimliği'),
              onChanged: (value) {
                setState(() {
                  ekipKimligi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Ekibin Adı'),
              onChanged: (value) {
                setState(() {
                  ekipAdi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Yaşanılan Ülke'),
              onChanged: (value) {
                setState(() {
                  yasananUlke = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Kişi Sayısı'),
              onChanged: (value) {
                setState(() {
                  kisiSayisi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Köpek Sayısı'),
              onChanged: (value) {
                setState(() {
                  kopekSayisi = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Ekip Türü Müdahale Etme'),
              onChanged: (value) {
                setState(() {
                  ekipTuru = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'INSARAG Sınıflandırması'),
              onChanged: (value) {
                setState(() {
                  insaragSiniflandirmasi = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Müdehale Unsurları',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: const Text('Teknik Arama'),
              value: teknikArama,
              onChanged: (value) {
                setState(() {
                  teknikArama = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Köpekle Arama'),
              value: kopekleArama,
              onChanged: (value) {
                setState(() {
                  kopekleArama = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Kurtarma'),
              value: kurtarma,
              onChanged: (value) {
                setState(() {
                  kurtarma = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Tıbbi'),
              value: tibbi,
              onChanged: (value) {
                setState(() {
                  tibbi = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Tehlikeli Madde Tespit'),
              value: tehlikeliMaddeTespit,
              onChanged: (value) {
                setState(() {
                  tehlikeliMaddeTespit = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Yapı Mühendisleri'),
              value: yapiMuhendisleri,
              onChanged: (value) {
                setState(() {
                  yapiMuhendisleri = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('RDC/OSOCC Desteği'),
              value: rdcOsocc,
              onChanged: (value) {
                setState(() {
                  rdcOsocc = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('UC Desteği'),
              value: uc,
              onChanged: (value) {
                setState(() {
                  uc = value!;
                });
              },
            ),

            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Diğer Kabiliyetler'),
              onChanged: (value) {
                setState(() {
                  digerKabiliyetler = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Kendine Yeterlilik (Su)'),
              onChanged: (value) {
                setState(() {
                  kendineYeterlilikSu = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Kendine Yeterlilik (Gıda)'),
              onChanged: (value) {
                setState(() {
                  kendineYeterlilikGida = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Beklenen Varış Tarihi'),
              onChanged: (value) {
                setState(() {
                  beklenenVarisTarihi = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Beklenen Varış Saati'),
              onChanged: (value) {
                setState(() {
                  beklenenVarisSaati = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Varış Noktası'),
              onChanged: (value) {
                setState(() {
                  varisNoktasi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Hava Aracı Türü'),
              onChanged: (value) {
                setState(() {
                  havaAraciTuru = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Destek Gereksinimleri',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Ulaşım Kişi Sayısı'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ulasimKisiSayisi = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Ulaşım Köpek Sayısı'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ulasimKopekSayisi = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Ulaşım Donanım Ton'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ulasimDonanimTon = double.parse(value);
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Ulaşım Donanım Metreküp'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ulasimDonanimMetrekup = double.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Benzin (Günlük Litre)'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ikmallerBenzin = double.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Dizel (Günlük Litre)'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ikmallerDizel = double.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Kesme Gazı Sayısı'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ikmallerKesmeGaziSayisi = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'İkmaller Kesme Gazı Türü'),
              onChanged: (value) {
                setState(() {
                  ikmallerKesmeGaziTur = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Tıbbi Oksijen No.'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  ikmallerTibbiOksijenNo = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Tıbbi Oksijen Ebat'),
              onChanged: (value) {
                setState(() {
                  ikmallerTibbiOksijenEbat = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller BoO Yer Gereksinimi (m²)'),
              onChanged: (value) {
                setState(() {
                  ikmallerBoOYerGereksinimi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'İkmaller Diğer Lojistik İhtiyaçlar'),
              onChanged: (value) {
                setState(() {
                  ikmallerDigerLojistikIhtiyaclar = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'İrtibat Kişileri',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: '1. İrtibat Kişisinin Adı'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi1Adi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '1. İrtibat Kişisinin Cep Telefonu'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi1CepTelefonu = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '1. İrtibat Kişisinin Uydu Telefonu'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi1UyduTelefonu = value;
                });
              },
            ),

            TextFormField(
              decoration: const InputDecoration(
                  labelText: '1. İrtibat Kişisinin E-mail Adresi'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi1Email = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: '2. İrtibat Kişisinin Adı'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi2Adi = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '2. İrtibat Kişisinin Cep Telefonu'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi2CepTelefonu = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '2. İrtibat Kişisinin Uydu Telefonu'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi2UyduTelefonu = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '2. İrtibat Kişisinin E-mail Adresi'),
              onChanged: (value) {
                setState(() {
                  irtibatKisi2Email = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Harekat Üssü Adresi'),
              onChanged: (value) {
                setState(() {
                  harekatUssuAdres = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Radyo Frekansı'),
              onChanged: (value) {
                setState(() {
                  radyoFrekansi = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'BOO GPS Koordinatları'),
              onChanged: (value) {
                setState(() {
                  booGPSKoordinatlari = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Formu Dolduran',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Formu Dolduran İsim'),
              onChanged: (value) {
                setState(() {
                  formuDolduranIsim = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Formu Dolduran Unvan'),
              onChanged: (value) {
                setState(() {
                  formuDolduranUnvan = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Tarih'),
              onChanged: (value) {
                setState(() {
                  tarih = value;
                });
              },
            ),
            const SizedBox(height: 16.0), // Boşluk ekleyebilirsiniz

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
