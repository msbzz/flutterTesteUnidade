import 'package:alura_bank/data/bank_inherited.dart';
import 'package:alura_bank/screens/home.dart';
import 'package:alura_bank/themes/purple_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: purpleTheme,
      home: BankInherited(child: const Home()),
    );
  }
}
