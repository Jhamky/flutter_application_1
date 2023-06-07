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
  ],
);
