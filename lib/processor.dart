enum OperationType { MULTIPLICATION, DIVISION, ADDITION, SUBTRACTION }

class Processor {
  List<String> equation;

  Processor({this.equation});

  double _calculate(a, b, operation) {
    switch (operation) {
      case OperationType.MULTIPLICATION:
        return (a * b);
        break;
      case OperationType.DIVISION:
        return (a / b);
        break;
      case OperationType.ADDITION:
        return (a + b);
        break;
      case OperationType.SUBTRACTION:
        return (a - b);
        break;
      default:
        return null;
    }
  }

  void getResult() {
    equation.forEach((symbol) => {
      
    });


  }
}
