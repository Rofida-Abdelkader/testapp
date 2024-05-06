import 'package:flutter/material.dart';
import 'package:testapp/DetailsScreen.dart';
import 'package:testapp/LoginScreen.dart';
import 'package:testapp/RegisterScreen.dart';
import 'package:testapp/RegisterScreen2.dart';
import 'package:testapp/testlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const DetailsScreen(),
    );
  }
}
