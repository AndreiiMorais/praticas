import 'package:flutter/material.dart';
import 'package:praticas/pages/details_page.dart';
import 'package:praticas/pages/homepage.dart';
import 'package:praticas/pages/login_page.dart';
import 'package:praticas/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //retira o banner de debug do emulador
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/home': (_) => const HomePage(),
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/details': (_) => const DetailsPage(),
      },
    );
  }
}
