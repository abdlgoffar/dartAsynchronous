//object Isolate adalah thread tempat kode asynchronous di jalankan, by default
//dart async hanya menggunakan satu Object Thread , Jadi perlu berhati hati apabila
//membuat code async yang lebih dari satu karena bisa mambuat code async menjadi stuck, atau macet bentrok tidak berjalan.

//contoh stuck code isolate.

import 'dart:io';
import 'dart:isolate';

Future<void> sayHello(String name) async {
  sleep(Duration(seconds: 2));
  print("Hello $name");
  Isolate.exit();
}

void main(){
  Isolate.spawn(sayHello, "Goffar");
  print("Done");
}