import 'package:alura_bank/data/bank_inherited.dart';
import 'package:alura_bank/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('My widget has a text "Spent"', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(
          child: const Home(),
        ),
      ),
    );
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOne);
  });
}
