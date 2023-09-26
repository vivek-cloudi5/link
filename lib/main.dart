import 'package:flutter/material.dart';
import 'package:link/screens/splash_screen.dart';
import 'package:link/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Welcome BLoC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
      },
    );
  }
}
