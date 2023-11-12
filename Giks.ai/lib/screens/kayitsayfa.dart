import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController afadCardController = TextEditingController();
  bool isChecked = false;

  void toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  void kullanimKosullari() {
    // Kullanım Koşulları sayfasına yönlendirme yapabilirsiniz
  }

  void kvkk() {
    // KVKK sayfasına yönlendirme yapabilirsiniz
  }

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
            controller: phoneController,
            decoration: const InputDecoration(
              labelText: 'İl',
            ),
          ),
          TextFormField(
            controller: phoneController,
            decoration: const InputDecoration(
              labelText: 'Kurum/STK İsmi',
            ),
          ),
          TextFormField(
            controller: afadCardController,
            decoration: const InputDecoration(
              labelText: 'AFAD Kod',
              hintText: 'AFAD tarafından sağlanan kod',
            ),
          ),
          CheckboxListTile(
            title: RichText(
              text: TextSpan(
                text: 'Kullanım Koşulları ve ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'KVKK Kuralları',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = kvkk,
                  ),
                  const TextSpan(text: 'nı Kabul Ediyorum'),
                ],
              ),
            ),
            value: isChecked,
            onChanged: toggleCheckbox,
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.blue,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
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
