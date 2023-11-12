import 'package:flutter/material.dart';

class SeferberlikSonlandirmaFormu extends StatefulWidget {
  const SeferberlikSonlandirmaFormu({super.key});

  @override
  _SeferberlikSonlandirmaFormuState createState() =>
      _SeferberlikSonlandirmaFormuState();
}

class _SeferberlikSonlandirmaFormuState
    extends State<SeferberlikSonlandirmaFormu> {
  final _formKey = GlobalKey<FormState>();
  late String ekipKimligi;
  late String ekipAdi;
  late String tarihGun;
  late String tarihAy;
  late String saat;
  late String dakika;
  late String ayrilmaNoktasi;
  late String ulasimUcusBilgisi;
  late String ekipSayisi;
  late String kopekSayisi;
  late String donanimTon;
  late String donanimMetrekup;
  late String zeminIhtiyaci;
  late String yuklemeBosaltmaIhtiyaci;
  late String konaklamaIhtiyaci;
  late String digerBilgiler;
  late String formuDolduranIsim;
  late String formuDolduranTarihGun;
  late String formuDolduranTarihAy;
  late String formuDolduranKonum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seferberliğin Sonlandırılması Formu'),
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
                  'Seferberliğin Sonlandırılması Formu',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ekip Kimliği'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ekip kimliğini giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    ekipKimligi = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ekip Adı'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ekip adını giriniz.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    ekipAdi = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Ayrılış Bilgileri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Tarih [GG-AAA]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Tarihi giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          tarihGun = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Tarih [GG-AAA]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Tarihi giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          tarihAy = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Saat [sa:dk]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Saati giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          saat = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Saat [sa:dk]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Dakikayı giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          dakika = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ayrılma Noktası'),
                onChanged: (value) {
                  setState(() {
                    ayrilmaNoktasi = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Ulaşım/Uçuş Bilgisi'),
                onChanged: (value) {
                  setState(() {
                    ulasimUcusBilgisi = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Ekip Bilgileri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ekip Sayısı'),
                onChanged: (value) {
                  setState(() {
                    ekipSayisi = value;
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
                decoration: const InputDecoration(labelText: 'Donanım (Ton)'),
                onChanged: (value) {
                  setState(() {
                    donanimTon = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Donanım (m3)'),
                onChanged: (value) {
                  setState(() {
                    donanimMetrekup = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Özel Talepler',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Zemin İhtiyacı'),
                onChanged: (value) {
                  setState(() {
                    zeminIhtiyaci = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Yükleme/Boşaltma İhtiyacı'),
                onChanged: (value) {
                  setState(() {
                    yuklemeBosaltmaIhtiyaci = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Ayrılış Noktasında Konaklama İhtiyacı'),
                onChanged: (value) {
                  setState(() {
                    konaklamaIhtiyaci = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Diğer Bilgiler'),
                onChanged: (value) {
                  setState(() {
                    digerBilgiler = value;
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
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Tarih [GG]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Tarihi giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          formuDolduranTarihGun = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Tarih [AAA]'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Tarihi giriniz.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          formuDolduranTarihAy = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Konum/Pozisyon'),
                onChanged: (value) {
                  setState(() {
                    formuDolduranKonum = value;
                  });
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form geçerli olduğunda yapılacak işlemler
                    // Örneğin, formu kaydet veya gönder
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
