// int calculate() {
//   return 6 * 7;
// }

// lib/my_calculator.dart

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

int divide(int a, int b) {
  if (b != 0) {
    return a ~/
        b; // Tamsayı bölme kullanıldı, a / b kullanmak istiyorsanız double döndürün.
  } else {
    print("Error: Division by zero!");
    return -1;
  }
}
