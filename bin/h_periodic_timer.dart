//periodic timer adalah object untuk membuat code asynchronous berjalan setiap waktu tertentu yang sudah ditentukan.


//contoh periodic timer
import 'dart:async';

void main(){
  Timer.periodic(Duration(seconds: 1), (timer) {
    print("Time number ${timer.tick}");
    if(timer.tick >= 5){
      timer.cancel();
    }
  });

  print("Done");
}