import 'package:flutter/material.dart';
import 'maillogin.dart';
import 'screens/kayitsayfa.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/hands_699486_1920_2.PNG"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Image.asset(
                    "images/logo_final.png",
                    height: 300.0,
                  ),
                ),
              ),
              Positioned(
                bottom: orientation == Orientation.portrait ? 400.0 : 0.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[300],
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 65.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      "images/edevlet.png",
                      height: 50.0,
                    ),
                    label: const Text(
                      "İle giriş Yap",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: orientation == Orientation.portrait ? 280.0 : 0.0,
                left: 10.0,
                right: 10.0,
                child: Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[300],
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 30.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mailLoginPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.mail),
                    label: const Text(
                      "Foreigner Login\n(Yabancı Vatandaş Girişi)",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
