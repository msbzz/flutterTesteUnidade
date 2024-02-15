import 'package:alura_bank/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('Bank model deposit should turn points into 10', () {
    final bank = BankModel();
    bank.deposit(10);
    expect(bank.points, 10);
     
  });
}