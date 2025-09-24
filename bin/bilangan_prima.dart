import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  int n = int.parse(stdin.readLineSync()!);

  bool prima = true;

  if (n < 2) {
    prima = false;
  } else {
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) {
        prima = false;
        break;
      }
    }
  }

  if (prima) {
    print("$n adalah bilangan prima");
  } else {
    print("$n bukan bilangan prima");
  }
}
