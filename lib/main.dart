import 'package:flutter/material.dart';
import 'package:project/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
