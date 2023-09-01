//then(FutureOr<R> callback(T)) : Future<R>, dipanggil ketika Future sukses, dan diubah menjadi nilai lainnya

//then method digunakan untuk mengambil return value dari asynchronous code.

Future<String> hello(String name){
  return Future.delayed(Duration(seconds: 3), (){
    return name;
  });
}

void main(){
  //contoh penggunaan then method.
  hello("abdul goffar")
      .then((value) => print(value.toUpperCase()));
  print("Done");
}