//catch async await adalah cara untuk melakukan try catch pada object future dengan keyword async

Future<Object> name(String name) async {
  return Exception("SENGAJA DIBUAT EXCEPTION");
}


Future<void> hello() async {
  //contoh cara pengunaan await.
  try {
    var n = await name("abdul goffar");
    print(n);
  } catch(e) {
    print(e);
  } finally {
    print("CODE SELESAI");
  }
}

void main() {
  hello();
}