import 'package:flutter/material.dart';

class BarWithCheckbox extends StatefulWidget {
  const BarWithCheckbox({Key? key}) : super(key: key);

  @override
  _BarWithCheckboxState createState() => _BarWithCheckboxState();
}

class _BarWithCheckboxState extends State<BarWithCheckbox> {
  int _currentValue = 1;

  void _increment() {
    setState(() {
      if (_currentValue < 100) {
        _currentValue++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_currentValue > 1) {
        _currentValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('Su'),
          value:
              true, // Change this with your logic to track whether it is checked
          onChanged: (newValue) {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _decrement,
              icon: const Icon(Icons.remove),
            ),
            SizedBox(
              width: 100,
              child: Text(
                '$_currentValue',
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              onPressed: _increment,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Form'),
      ),
      body: Column(
        children: [
          BarWithCheckbox(),
          // Add other form elements here
        ],
      ),
    );
  }
}
