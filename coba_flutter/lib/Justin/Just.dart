import 'package:flutter/material.dart';

class Just extends StatefulWidget { // Rename ke Just agar konsisten dengan main.dart
  const Just({super.key});

  @override
  State<Just> createState() => _JustState();
}

class _JustState extends State<Just> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: const Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
