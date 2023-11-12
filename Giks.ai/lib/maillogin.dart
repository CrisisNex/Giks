import 'package:flutter/material.dart';
import 'home_page.dart';

class mailLoginPage extends StatelessWidget {
  const mailLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/hands_699486_1920_2.PNG"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: height * 0.04),
              Image.asset(
                "images/logo_final.png",
                height: height * 0.25,
              ),
              const Text(
                'Giriş Yap',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: height * 0.05),
              SizedBox(
                height: height * 0.07,
                width: width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.07,
                width: width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: height * 0.05),
              SizedBox(
                height: height * 0.07,
                width: width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange[300],
                  ),
                  child: const Text("Giriş Yap"),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text("Şifremi Unuttum"),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Kayıt Ol"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
