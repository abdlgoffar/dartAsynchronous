//async sama saja seperti object future biasa, namun bedanya object future yang dibuat dengan tambahan async keyword
//cara pengambilan return value asynchronous nya, bisa tanpa menggunakan method then()

//contoh object future dengan keyword async.
Future<String> sayHello(String name) async {
  return "Hello $name";
}
