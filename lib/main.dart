
import 'package:flutter/material.dart';
import 'package:segundoprojeto/pages/cadastro.dart';
import 'package:segundoprojeto/pages/login.dart';
import 'package:segundoprojeto/pages/home.dart';
import 'package:segundoprojeto/pages/splash.dart';
import 'package:segundoprojeto/shared/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        fontFamily: MyFonts.fontPrimary,
        useMaterial3: true,
      ),
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen' : (context) => const SplashScreen(),
        '/login' : (context) => const login(),
        '/cadastro' : (context) => const cadastro(),
        '/home' : (context) => const home(),
      },
    );
  }
}
