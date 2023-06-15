import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/entities_lugares.dart';

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
      body: Center(
        child: FutureBuilder(
          future: listadirreciones(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return const Text('esta mal');
            } else {
              return const Text('esta bien');
            }
          },
        ),
      ),
    );
  }
}
