import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigation({super.key, required this.currentIndex});

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;

      case 1:
        context.go('/favoriteview');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      items: const [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 118, 118, 118)),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.heart_broken),
            icon: Icon(Icons.heart_broken),
            label: 'Favoritos',
            backgroundColor: Color.fromARGB(255, 212, 86, 77))
      ],
    );
  }
}
