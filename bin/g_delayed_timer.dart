//delayed timer adalah object untuk membuat code asynchronous berjalan setelah waktu tertentu yang sudah ditentukan.


//contoh delayed timer
import 'dart:async';

void main(){
  Timer(Duration(seconds: 2), () {
    print("Hello Abdul");
  });
  print("Done");
}