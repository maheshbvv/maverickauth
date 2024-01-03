import 'package:flutter/material.dart';
import 'package:maverickauth/components/auth_form.dart';
import 'package:maverickauth/cosmetics/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Scaffold(
        body: MaverickAuthForm(),
      ),
    );
  }
}
