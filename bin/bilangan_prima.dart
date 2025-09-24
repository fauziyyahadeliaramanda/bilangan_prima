import 'dart:io';

bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Masukkan angka: ");
  int n = int.parse(stdin.readLineSync()!);

  if (isPrima(n)) {
    print("$n adalah bilangan prima");
  } else {
    print("$n bukan bilangan prima");
  }
}
