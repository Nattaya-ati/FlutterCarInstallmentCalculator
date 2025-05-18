import 'package:flutter/material.dart';

void main() {
  runApp(InputScreenUI());
}

class InputScreenUI extends StatefulWidget {
  const InputScreenUI({super.key});

  @override
  State<InputScreenUI> createState() => _InputScreenUIState();
}

class _InputScreenUIState extends State<InputScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'CI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
