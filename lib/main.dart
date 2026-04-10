import 'package:flutter/material.dart';
import 'package:skillconnect/config/routes/go_router_config.dart';
import 'package:skillconnect/config/theme/app_theme.dart';
import 'package:skillconnect/features/auth/presentation/screens/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Skill Connect",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      // home:LoginScreen() ,
      routerConfig: GoRouterConfig.router,
    );
  }
}
