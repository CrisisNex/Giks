import 'package:flutter/material.dart';

import 'takimliderformlari.dart';

class GorevliProfil extends StatelessWidget {
  const GorevliProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // Ayarlar iconuna tıklandığında yapılacak işlemler
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'İsim Soyisim',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'STK/Kuruluş İsmi',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[300],
                width: screenWidth * 0.8,
                height: MediaQuery.of(context).size.height - 500,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Geçmiş Aktiviteler',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Burada geçmişinizde katıldığınız aktiviteler yer alır.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: const Text('Takım Lideri Formları'),
                  textColor: Colors.white,
                  tileColor: Colors.blue[500],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TakimLiderForm()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
