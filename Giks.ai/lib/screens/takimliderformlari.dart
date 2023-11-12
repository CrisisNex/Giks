import 'package:flutter/material.dart';
import 'package:akeks/formlar/teslimtesellum4.dart';
import 'package:akeks/formlar/triyajform.dart';
import '../formlar/ekipbilgiform.dart';
import '../formlar/enkazcikarilanesyaform.dart';
import '../formlar/enkazcikarilanhayvanform.dart';
import '../formlar/gorevozetiform.dart';
import '../formlar/gorevbrifingform.dart';
import '../formlar/gorevsonrasiraporform.dart';
import '../formlar/olaysektordurumrapor.dart';
import '../formlar/calismaalaniformu.dart';
import '../formlar/seferberliksonlandirmaform.dart';
import '../formlar/teslimtesellumek3.dart';

class TakimLiderForm extends StatelessWidget {
  const TakimLiderForm({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text('Takım Lideri Formları'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Takım Lideri Formları',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Olay Sektör Durum Raporu Formu',
                  logo: const Icon(Icons.report), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const OlaySektorDurumRaporFormu()),
                    );
                    // Olay Sektör Durum Raporu Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
                FormButton(
                  formName: 'Çalışma Alanı Raporu Formu',
                  logo: const Icon(Icons.work), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CalismaAlaniFormu()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Görev Brifing Paketi',
                  logo: const Icon(Icons.assignment), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GorevBrifingFormu()),
                    );
                    // Görev Brifing Paketi butonuna tıklandığında yapılacak işlemler
                  },
                ),
                FormButton(
                  formName: 'Görev Özeti Formu',
                  logo: const Icon(Icons.assignment_turned_in), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GorevOzetiFormu()),
                    );
                    // Görev Özeti Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Çalışma Alanı Triyaj Formu',
                  logo: const Icon(Icons.playlist_add_check), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CalismaAlaniTriyajFormu()),
                    );
                    // Çalışma Alanı Triyaj Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
                FormButton(
                  formName: 'Ekip Bilgi Formu',
                  logo: const Icon(
                      Icons.airline_seat_flat_angled_outlined), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UsarEkipBilgiFormu()),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Ekip Görev Sonrası Raporlama',
                  logo: const Icon(Icons.add_task), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const UsarGorevSonrasiRaporFormu()),
                    );
                    // Çalışma Alanı Triyaj Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
                FormButton(
                  formName: 'Seferberliğin Sonlandırılması Formu',
                  logo: const Icon(Icons.add_road), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SeferberlikSonlandirmaFormu()),
                    );
                    // Seferberliğin Sonlandırılması Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Enkazdan Çıkarılan Hayvan Formu',
                  logo: const Icon(Icons.spa_sharp), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const EnkazdanCikarilanHayvanForm()),
                    );
                  },
                ),
                FormButton(
                  formName: 'Enkazdan Çıkarılan Kıymetli Eşya Formu',
                  logo: const Icon(Icons.diamond), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const EnkazdanCikarilanEsyaForm()),
                    );
                    // Çalışma Alanı Triyaj Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                  formName: 'Teslim-Tesellüm Belgesi EK-3',
                  logo: const Icon(Icons.assistant), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TeslimTesellumBelgesi()),
                    );
                  },
                ),
                FormButton(
                  formName: 'Teslim-Tesellüm Belgesi EK-4',
                  logo: const Icon(Icons.backpack_outlined), // Logo ekle
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TeslimTesellumBelgesi4()),
                    );
                    // Çalışma Alanı Triyaj Formu butonuna tıklandığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  final String formName;
  final Widget logo;
  final VoidCallback onPressed;

  const FormButton({
    super.key,
    required this.formName,
    required this.logo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 200,
        height: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Turuncu buton rengi
            elevation: 0, // Gölgelendirme kaldırılır
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              logo,
              const SizedBox(
                  height:
                      10), // Logo ile form adı arasına boşluk ekleyebilirsiniz
              Text(
                formName,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
