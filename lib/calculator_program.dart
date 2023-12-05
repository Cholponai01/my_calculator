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
      print("Ошибка: деление на ноль!");
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
    stdout.write("Выберите операцию (+, -, *, /): ");
    String operation = stdin.readLineSync()!;
    return operation;
  }

  void displayResult(double result) {
    print("Результат: $result");
  }
}

void main() {
  Screen screen = Screen();
  Math calculator = Math();

  double num1 = screen.getNumberInput("Введите первое число: ");
  double num2 = screen.getNumberInput("Введите второе число: ");
  String operation = screen.getOperationInput();

  double result;

  switch (operation) {
    case '+':
      result = calculator.add(num1, num2);
      break;
    case '-':
      result = calculator.subtract(num1, num2);
      break;
    case '*':
      result = calculator.multiply(num1, num2);
      break;
    case '/':
      result = calculator.divide(num1, num2);
      break;
    default:
      print("Ошибка: неверная операция!");
      return;
  }

  screen.displayResult(result);
}
// import 'dart:io';

// class Math {
//   num add(num a, num b) => a + b;
//   num subtract(num a, num b) => a - b;
//   num multiply(num a, num b) => a * b;
//   num divide(num a, num b) => a / b;
// }

// class Screen {
//   final math = Math();

//   void start() {
//     print("Введите число 1: ");
//     final num1 = num.parse(stdin.readLineSync()!);

//     print("Введите число 2:");
//     final num2 = num.parse(stdin.readLineSync()!);

//     print("Выберите операцию (+, -, *, /): ");
//     final operation = stdin.readLineSync();

//     switch (operation) {
//       case '+':
//         print(math.add(num1, num2));
//         break;
//       case '-':
//         print(math.subtract(num1, num2));
//         break;
//       case '*':
//         print(math.multiply(num1, num2));
//         break;
//       case '/':
//         print(math.divide(num1, num2));
//     }
//   }
// }

// void main() {
//   final screen = Screen();
//   screen.start();
// }
