//catchError(callback(Error)), dipanggil ketika Future error


//catch error digunakan untuk melakukan try catch pada code asynchronous.
Future<String> hello(String name){
  return Future.delayed(Duration(seconds: 3), (){
    throw Exception("TERJADI KESALAHAN");
  });
}

void main(){
  //contoh penggunaan catch error.
  hello("abdul goffar")
      .then((value) => print(value))
      .catchError((exception) => print(exception.message));
  print("Done");
}