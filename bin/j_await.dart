//await adalah keyword untuk mengambil return value data dari object future yang sudah diberi keyword async
Future<String> name(String name) async {
  return name;
}


Future<void> hello() async {
  //contoh cara pengunaan await.
  var n = await name("abdul goffar");
  print(n);
}

void main() {
  hello();
}