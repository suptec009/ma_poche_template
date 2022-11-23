
class OpType {
  String value;

  OpType(this.value);
}

class Operation {

  OpType type;
  String title;
  double amount;
  DateTime date; 

  Operation(this.type, this.title, this.amount, this.date);
}