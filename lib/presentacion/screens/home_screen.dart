import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const name = 'homescreen';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Appbar'),
      ),
      body: const Center(
        child: Text('hola'),
      ),
    );
  }
}
