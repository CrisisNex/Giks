import 'package:flutter/material.dart';

class GorevOzetiFormu extends StatefulWidget {
  @override
  _GorevOzetiFormuState createState() => _GorevOzetiFormuState();
}

class _GorevOzetiFormuState extends State<GorevOzetiFormu> {
  late TextEditingController ekipKimligiController;
  late TextEditingController ekipAdiController;
  late TextEditingController irtibatAdiController;
  late TextEditingController telefonController;
  late TextEditingController emailController;
  late TextEditingController faksController;
  late TextEditingController varisTarihiController;
  late TextEditingController varisSaatiController;
  late TextEditingController ayrilisTarihiController;
  late TextEditingController ayrilisSaatiController;
  late TextEditingController gorevVerilenAlanlarController;
  late TextEditingController cikarilanAfetzedeoluController;
  late TextEditingController insaragYonergeleriController;
  late TextEditingController cikarilanAfetzedeCanliController;

  @override
  void initState() {
    super.initState();
    ekipKimligiController = TextEditingController();
    ekipAdiController = TextEditingController();
    irtibatAdiController = TextEditingController();
    telefonController = TextEditingController();
    emailController = TextEditingController();
    faksController = TextEditingController();
    varisTarihiController = TextEditingController();
    varisSaatiController = TextEditingController();
    ayrilisTarihiController = TextEditingController();
    ayrilisSaatiController = TextEditingController();
    gorevVerilenAlanlarController = TextEditingController();
    cikarilanAfetzedeoluController = TextEditingController();
    insaragYonergeleriController = TextEditingController();
    cikarilanAfetzedeCanliController = TextEditingController();
  }

  @override
  void dispose() {
    ekipKimligiController.dispose();
    ekipAdiController.dispose();
    irtibatAdiController.dispose();
    telefonController.dispose();
    emailController.dispose();
    faksController.dispose();
    varisTarihiController.dispose();
    varisSaatiController.dispose();
    ayrilisTarihiController.dispose();
    ayrilisSaatiController.dispose();
    gorevVerilenAlanlarController.dispose();
    cikarilanAfetzedeoluController.dispose();
    insaragYonergeleriController.dispose();
    cikarilanAfetzedeCanliController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Görev Özeti Formu'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Image(
                image: AssetImage('images/logo_final.png'),
                width: 200,
                height: 200,
              ),
              const Center(
                child: Text(
                  'Görev Özeti Formu',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                controller: ekipKimligiController,
                decoration: const InputDecoration(labelText: 'Ekip Kimliği'),
              ),
              TextFormField(
                controller: ekipAdiController,
                decoration: const InputDecoration(labelText: 'Ekibin Adı'),
              ),
              TextFormField(
                controller: irtibatAdiController,
                decoration:
                    const InputDecoration(labelText: 'İrtibat Bilgileri (Adı)'),
              ),
              TextFormField(
                controller: telefonController,
                decoration: const InputDecoration(labelText: 'Telefon'),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                controller: faksController,
                decoration: const InputDecoration(labelText: 'Faks'),
              ),
              TextFormField(
                controller: varisTarihiController,
                decoration: const InputDecoration(labelText: 'Varış Tarihi'),
              ),
              TextFormField(
                controller: varisSaatiController,
                decoration: const InputDecoration(labelText: 'Varış Saati'),
              ),
              TextFormField(
                controller: ayrilisTarihiController,
                decoration: const InputDecoration(labelText: 'Ayrılış Tarihi'),
              ),
              TextFormField(
                controller: ayrilisSaatiController,
                decoration: const InputDecoration(labelText: 'Ayrılış Saati'),
              ),
              TextFormField(
                controller: gorevVerilenAlanlarController,
                decoration: const InputDecoration(
                  labelText: 'Görev Verilen Alan(lar), Operasyon Sektörleri',
                  alignLabelWithHint: true,
                ),
                maxLines: null,
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Sonuçlar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: cikarilanAfetzedeCanliController,
                decoration: const InputDecoration(
                    labelText: 'Çıkarılan Canlı Afetzede'),
                maxLines: null,
              ),
              TextFormField(
                controller: cikarilanAfetzedeoluController,
                decoration:
                    const InputDecoration(labelText: 'Çıkarılan Ölü Afetzede'),
                maxLines: null,
              ),
              TextFormField(
                controller: insaragYonergeleriController,
                decoration: const InputDecoration(
                  labelText:
                      'Mevcut Yönergelerde yapılması önerilen değişiklikler',
                  alignLabelWithHint: true,
                ),
                maxLines: null,
              ),
              ElevatedButton(
                onPressed: () {
                  // Formu gönderme veya kaydetme işlemleri
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
