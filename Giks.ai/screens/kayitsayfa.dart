import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController afadCardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Sayfası'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
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
              'Kayıt Sayfası',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'İsim',
            ),
          ),
          TextFormField(
            controller: surnameController,
            decoration: const InputDecoration(
              labelText: 'Soy isim',
            ),
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'E-posta',
            ),
          ),
          TextFormField(
            controller: phoneController,
            decoration: const InputDecoration(
              labelText: 'Telefon Numarası',
            ),
          ),
          TextFormField(
            controller: afadCardController,
            decoration: const InputDecoration(
              labelText: 'AFAD Kart Numarası',
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              

              // TODO: Kayıt işlemlerini gerçekleştir

              // Formu temizle
              nameController.clear();
              surnameController.clear();
              emailController.clear();
              phoneController.clear();
              afadCardController.clear();
            },
            child: const Text('Kayıt Ol'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}
