import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillconnect/config/routes/app_routes.dart';
import 'package:skillconnect/features/auth/presentation/screens/login_screen.dart';
import 'package:skillconnect/features/auth/presentation/screens/signup_screen.dart';

class GoRouterConfig {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        name: "splash",
        path: AppRoutes.splash,
        builder: (context, state) {
          return MaterialApp(home: Text("this is splash"));
        },
      ),
      GoRoute(
        name: "login",
        path: AppRoutes.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: "signup",
        path: "/signup",
        builder: (context, state) => SignupScreen(),
      ),
    ],
  );
}
