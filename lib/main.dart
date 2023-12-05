import 'my_calculator.dart';

void main() {
  int num1 = 10;
  int num2 = 5;

  int resultAdd = add(num1, num2);
  int resultSubtract = subtract(num1, num2);
  int resultMultiply = multiply(num1, num2);
  int resultDivide = divide(num1, num2);

  print("Addition: $resultAdd");
  print("Subtraction: $resultSubtract");
  print("Multiplication: $resultMultiply");
  print("Division: $resultDivide");
}
