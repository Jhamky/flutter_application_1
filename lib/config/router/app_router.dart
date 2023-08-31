import 'package:flutter_application_1/presentacion/screens/create_grup.dart';
import 'package:flutter_application_1/presentacion/screens/direcciones.dart';
import 'package:flutter_application_1/presentacion/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/CreateGRUP',
      name: DirrecionesNew.name,
      builder: (context, state) => DirrecionesNew(),
    ),
    GoRoute(
      path: '/dirreciones',
      name: DirrecionesScreen.name,
      builder: (context, state) => const DirrecionesScreen(),
    ),
  ],
);
