import 'dart:io';

void main() {
  print("=== Program Matematika Sederhana ===");
  print("1. Hitung Faktorial");
  print("2. Cek Bilangan Prima");
  stdout.write("Pilih menu (1/2): ");
  int pilih = int.parse(stdin.readLineSync()!);

  if (pilih == 1) {
    stdout.write("Masukkan angka: ");
    int n = int.parse(stdin.readLineSync()!);
    int faktorial = 1;
    for (int i = 1; i <= n; i++) {
      faktorial *= i;
    }
    print("Faktorial dari $n adalah $faktorial");
  } else if (pilih == 2) {
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
  } else {
    print("Menu tidak tersedia.");
  }
}
