import 'package:alura_bank/components/box_card.dart';
import 'package:alura_bank/data/bank_inherited.dart';
import 'package:alura_bank/data/bank_http.mocks.dart';
import 'package:alura_bank/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {

  final MockBankHttp httpMock = MockBankHttp();

  testWidgets('My widget has a text "Spent"', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(
          child: Home(api: httpMock.dolarToReal(),),
        ),
      ),
    );
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOne);
  });
  // barra de progresso "LinearProgressIndicator"
  testWidgets('finds a LinearProgressIndicator', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(api: httpMock.dolarToReal(),),
      ),
    ));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('finds a AccountStatus', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child:  Home(api: httpMock.dolarToReal(),),
      ),
    ));
    expect(find.byKey(const Key('testKey')), findsOneWidget);
  });

  // busca de repetições de widgets
  testWidgets('finds 5 BoxCards ', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(api: httpMock.dolarToReal(),),
      ),
    ));
    expect(find.byWidgetPredicate((widget) {
      if (widget is BoxCard) {
        return true;
      } else {
        return false;
      }
    }), findsNWidgets(5));
  });

    testWidgets('When tap Deposit should upload earned in 10', (tester) async{
     when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(api: httpMock.dolarToReal(),),
      ),
    ));
    await tester.tap(find.text('Deposit'));
    await tester.tap(find.text('Earned'));
    await tester.pumpAndSettle();

    expect(find.text('\$10.0'), findsOneWidget);
  });

  testWidgets('Testing MockHttp dolarToReal', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(api: httpMock.dolarToReal(),),
      ),
    ));
    verify(httpMock.dolarToReal()).called(1);
  });
}
