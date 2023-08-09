import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteView extends StatefulWidget {
  static const name = 'FavoriteView';
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Esta es la pantalla de favoritos: $count'),
            FilledButton.tonal(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Icon(Icons.plus_one))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            context.push('/');
          }),
    );
  }
}
