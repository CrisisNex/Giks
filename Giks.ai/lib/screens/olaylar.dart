import 'package:flutter/material.dart';
import 'goreval.dart';

class Olaylar extends StatelessWidget {
  const Olaylar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(),
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: const Text(
                'İstanbul Depremi (7.5)\n(40.850340, 29.025690)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InfoPage()),
                        );
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Görev Al'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 100.0,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
