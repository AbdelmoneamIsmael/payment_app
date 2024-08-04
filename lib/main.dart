import 'package:flutter/material.dart';
import 'package:payment_app/feat/cheeckout/presentation/screens/my_cart_screen.dart';

void main() {
  runApp(const CheekOutApp());
}

class CheekOutApp extends StatelessWidget {
  const CheekOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyCartScreen(),
    );
  }
}
