import 'package:flutter/material.dart';

class TeslimTesellumBelgesi extends StatefulWidget {
  const TeslimTesellumBelgesi({super.key});

  @override
  _TeslimTesellumBelgesiState createState() => _TeslimTesellumBelgesiState();
}

class _TeslimTesellumBelgesiState extends State<TeslimTesellumBelgesi> {
  final _formKey = GlobalKey<FormState>();
  String afetTuru = '';
  String formKodu = '';
  String formDuzenlemeTarihi = '';
  String formDuzenlemeSaati = '';
  String formSayisi = '';
  String formVersiyonu = '';
  String il = '';
  String ilce = '';
  String aciklama = '';
  String hazirlayanAdiSoyadi = '';
  String hazirlayanUnvani = '';
  String hazirlayanImza = '';
  String kurumIli = '';
  String kurumAdi = '';
  String hgEkipAdi = '';
  String ekiptekiGorevi = '';
  String sayfaNo = '';
  String formNo = '';
  String turHayvan = '';
  int adetHayvan = 0;
  String durumHayvan = '';
  String bulunduguYerHayvan = '';
  String adiSoyaditeslimeden = '';
  int tcKimlikNoteslimeden = 0;
  int telefonNoteslimeden = 0;
  String adiSoyaditeslimalan = '';
  int tcKimlikNoteslimalan = 0;
  int telefonNoteslimalan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TESLİM-TESELLÜM BELGESİ'),
      ),
      body: SingleChildScrollView(
        key: _formKey,
        padding: const EdgeInsets.all(16.0),
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
                'TESLİM-TESELLÜM BELGESİ EK-3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Afet Türü/Adı',
                    ),
                    onChanged: (value) {
                      setState(() {
                        afetTuru = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Form Kodu',
                    ),
                    onChanged: (value) {
                      setState(() {
                        formKodu = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Form Düzenleme Tarihi/Saati',
                    ),
                    onChanged: (value) {
                      setState(() {
                        formDuzenlemeTarihi = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Form Sayısı',
                    ),
                    onChanged: (value) {
                      setState(() {
                        formSayisi = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Form Versiyonu',
                    ),
                    onChanged: (value) {
                      setState(() {
                        formVersiyonu = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Form Verilerinin Kapsadığı İl',
              ),
              onChanged: (value) {
                setState(() {
                  il = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'İlçe',
              ),
              onChanged: (value) {
                setState(() {
                  ilce = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'TESLİM-TESELLÜM BELGESİ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'No',
              ),
              onChanged: (value) {
                setState(() {
                  formNo = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Tür',
              ),
              onChanged: (value) {
                setState(() {
                  turHayvan = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Adet',
              ),
              onChanged: (value) {
                setState(() {
                  adetHayvan = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Durum',
              ),
              onChanged: (value) {
                setState(() {
                  durumHayvan = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Bulunduğu yer',
              ),
              onChanged: (value) {
                setState(() {
                  bulunduguYerHayvan = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Adı Soyadı (TESLİM EDEN)',
              ),
              onChanged: (value) {
                setState(() {
                  adiSoyaditeslimeden = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'TC Kimlik No (TESLİM EDEN)',
              ),
              onChanged: (value) {
                setState(() {
                  tcKimlikNoteslimeden = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Telefon No (TESLİM EDEN)',
              ),
              onChanged: (value) {
                setState(() {
                  telefonNoteslimeden = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Adı Soyadı (TESLİM ALAN)',
              ),
              onChanged: (value) {
                setState(() {
                  adiSoyaditeslimalan = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'TC Kimlik No (TESLİM ALAN)',
              ),
              onChanged: (value) {
                setState(() {
                  tcKimlikNoteslimalan = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Telefon No (TESLİM ALAN)',
              ),
              onChanged: (value) {
                setState(() {
                  telefonNoteslimalan = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Açıklama',
              ),
              onChanged: (value) {
                setState(() {
                  aciklama = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'HAZIRLAYANIN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Adı Soyadı',
                    ),
                    onChanged: (value) {
                      setState(() {
                        hazirlayanAdiSoyadi = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Unvanı',
                    ),
                    onChanged: (value) {
                      setState(() {
                        hazirlayanUnvani = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'İmza',
                    ),
                    onChanged: (value) {
                      setState(() {
                        hazirlayanImza = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
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
            const SizedBox(height: 16.0),
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
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Belge No',
                    ),
                    onChanged: (value) {
                      setState(() {
                        sayfaNo = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
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
    );
  }
}
