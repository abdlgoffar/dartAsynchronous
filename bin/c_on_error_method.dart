//onError(FutureOr<R> callback(Error, StackTrace)) : Future<R>, dipanggil ketika Future error, untuk di ubah menjadi nilai lainnya

//on error method akan digunakan untuk validasi ketika terjadi error pada code asynchronous.
//jadi method on error lebih baik dibuat sebelum method then untuk validasi.

Future<String> hello(String name){
  return Future.delayed(Duration(seconds: 3), (){
    throw Exception();
  });
}

void main(){
  //contoh penggunaan on error.
  hello("abdul goffar")
      .onError((error, stackTrace) => "Terjadi error")
      .then((value) => print(value));
  print("Done");
}