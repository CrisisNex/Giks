import 'package:flutter/material.dart';

import '../lib/formlar/ekipmangetir.dart';


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
        title: const Text('Gorev Kayıt Formu'),
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
                'Kayıt Formu',
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
            ),
          ),
          TextFormField(
            controller: _addressController,
            decoration: const InputDecoration(
              labelText: 'Kurum/STK ismi',
            ),
          ),
          TextFormField(
            controller: _cityController,
            decoration: const InputDecoration(
              labelText: 'Şehir',
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
