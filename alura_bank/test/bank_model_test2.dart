import 'package:alura_bank/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BankModel Tests', () {
    test('Test deposit and transfer methods', () {
      final bankModel = BankModel();

      // Testando o método deposit
      bankModel.deposit(100);
      expect(bankModel.available, 100);
      expect(bankModel.earned, 100);
      expect(bankModel.points, 100);

      // Testando o método transfer
      bankModel.transfer(50);
      expect(bankModel.available, 50); // 100 - 50
      expect(bankModel.spent, 50);
      expect(bankModel.points, 150); // 100 + 50, pois os pontos são acumulados tanto no depósito quanto na transferência
    });
  });
}
