import 'dart:io';

void main() {
  stdout.write("Masukkan batas angka: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Bilangan prima dari 1 sampai $n adalah:");
  for (int i = 2; i <= n; i++) {
    bool prima = true;
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }
    if (prima) {
      print(i);
    }
  }
}
