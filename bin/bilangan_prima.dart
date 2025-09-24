import 'dart:io';
import 'dart:math';

bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= sqrt(n).toInt(); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print("=== Menu Bilangan Prima ===");
  print("1. Cek satu angka");
  print("2. Tampilkan bilangan prima sampai N");
  stdout.write("Pilih menu (1/2): ");
  int menu = int.parse(stdin.readLineSync()!);

  if (menu == 1) {
    stdout.write("Masukkan angka: ");
    int n = int.parse(stdin.readLineSync()!);
    print(isPrima(n) ? "$n adalah bilangan prima" : "$n bukan bilangan prima");
  } else if (menu == 2) {
    stdout.write("Masukkan batas angka: ");
    int n = int.parse(stdin.readLineSync()!);
    print("Bilangan prima sampai $n:");
    for (int i = 2; i <= n; i++) {
      if (isPrima(i)) print(i);
    }
  } else {
    print("Menu tidak valid!");
  }
}
