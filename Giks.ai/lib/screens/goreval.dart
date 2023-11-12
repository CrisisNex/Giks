import 'package:flutter/material.dart';
import '../formlar/ekipmangetir.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() {
    return _InfoPageState();
  }
}

class _InfoPageState extends State<InfoPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Görev Kayıt Formu'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 10),
          const Image(
            image: AssetImage('images/logo_final.png'),
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 10),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Görev Kayıt Formu',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'İsim Soyisminiz',
            ),
          ),
          TextFormField(
            controller: _surnameController,
            decoration: const InputDecoration(
              labelText: 'Şu anki lokasyonunuz',
            ),
          ),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Telefon numaranız',
            ),
          ),
          TextFormField(
            controller: _phoneController,
            decoration: const InputDecoration(
              labelText: 'Yakınınızın telefon numarası',
              hintText: 'Acil durumda aranılacak kişi telefon numarası',
            ),
          ),
          TextFormField(
            controller: _cityController,
            decoration: const InputDecoration(
              labelText: 'Şehir',
            ),
          ),
          TextFormField(
            controller: _addressController,
            decoration: const InputDecoration(
              labelText: 'Kurum/STK ismi',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WaterForm()),
              );
              // Gönder butonuna tıklandığında yapılacak işlemler
            },
            child: const Text('Kayıt Ol'),
          ),
        ],
      ),
    );
  }
}
