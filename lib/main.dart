import 'package:flutter/material.dart';
import 'package:rent_a_trend/routes.dart';
import 'package:rent_a_trend/screens/splash/splash_screen.dart';
import 'package:rent_a_trend/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RendATrend',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
