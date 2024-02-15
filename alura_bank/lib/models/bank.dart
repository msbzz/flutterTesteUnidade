
class BankModel {
  double available = 0;
  double spent = 0;
  double earned = 0;
  double points = 0;


  void deposit(double money) {
    available += money;
    earned += money;
    points += money;
  }

  void transfer(double money) {
    available -= money;
    points += money*2;
    spent += money;
  }
}
