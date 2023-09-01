//object future adalah object class utama untuk membuat code asynchronous di dart.
//object Future di Dart mirip seperti di bahasa pemrograman lain, di Java ada Future, atau di JavaScript ada Promise.
//object Future return valuenya sesuai degan parameter generic nya.

//OBJECT FUTURE DAN METHOD-METHOD UTAMANYA
//Future(computation) : membuat Future dengan computation function
//Future.delayed(duration, computation) : membuat Future dengan melakukan delay durasi tertentu
//Future.error(error) : membuat Future berisi data error
//Future.value(value) : membuat Future berisi data sukses



//CONTOH CODE ASYNCHRONOUS DI DART
Future<void> hello(){
  return Future.delayed(Duration(seconds: 5), (){
    print("Abdul goffar");
  });
}

void main(){
  hello();
  print("Done");
}