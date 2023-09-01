//object generator digunakan untuk membuat data collection Sync ataupun Async.
//Data Sync akan mengembalikan Iterable<T> sedangkan data Async akan mengembalikan Stream<T>.


//Untuk membuat generator Sync, kita bisa tambahkan sync* di function.
//Untuk membuat generator Async, kita bisa tambahkan async* di function.
//Untuk mengembalikan value nya, kita bisa gunakan yield value.


//CONTOH ASYNC GENERATOR
Stream<int> asyncNumber() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

//CONTOH CODE SYNC
Iterable<int> syncNumber() sync* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}
void main() {
  //get async
  asyncNumber().listen((event) {
    print(event);
  });

  //get sync
  syncNumber().forEach((element) {
    print(element);
  });
  print("Done");
}