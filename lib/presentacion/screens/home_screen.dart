import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentacion/shared/customNavagationBar.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  static const name = 'homescreen';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Vamos a la otra pantalla'),
          onPressed: () {
            context.push('/favoriteview');
          },
        ),
      ),
    );
  }
}
