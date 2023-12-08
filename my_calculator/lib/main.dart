import 'dart:io';

class Math {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      print("Ошибки деление на ноль!");
      return double.nan;
    }
  }
}

class Screen {
  double getNumberInput(String prompt) {
    stdout.write(prompt);
    String userInput = stdin.readLineSync()!;
    return double.parse(userInput);
  }

  String getOperationInput() {
    stdout.write("Выберите операцию (+, -, *, /):");
    String operation = stdin.readLineSync()!.replaceAll(",", ".");
    return operation;
  }

  void displayResult(double result) {
    print("Результат: $result");
  }
}

void main() {
  Math math = Math();
  Screen screen = Screen();

  double num1 = screen.getNumberInput("Введите первое число: ");
  double num2 = screen.getNumberInput("Введите второе число: ");
  String operation = screen.getOperationInput();
  double result;

  Map<String, double Function(double, double)> operations = {
    "+": math.add,
    "-": math.subtract,
    "*": math.multiply,
    "/": math.divide,
  };
  if (operations.containsKey(operation)) {
    result = operations[operation]!(num1, num2);
  } else {
    print("Ошибка: неверная операция!");
    return;
  }
  screen.displayResult(result);
}
