//whenComplete(FutureOr<void> callback(T)) : Future<T>, dipanggil ketika Future selesai, baik itu sukses atau error

//when complete adalah method yang akan di eksekusi ketika code asynchronous dibuat
//meskipun succes ataupun terjadi error.
Future<String> hello(String name){
  return Future.delayed(Duration(seconds: 3), (){
    throw Exception("TERJADI KESALAHAN");
  });
}

void main(){
  //contoh penggunaan wen complete.
  hello("abdul goffar")
      .then((value) => print(value))
      .catchError((exception) => print(exception.message))
      .whenComplete(() => print("code asynchronous telah berhasil dijalankan"));
  print("Done");
}