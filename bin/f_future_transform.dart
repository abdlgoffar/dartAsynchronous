//future transform adalah cara mengubah data type return value pada future menjadi
//data type lain.

Future<String> name() {
  return Future.value("Abdul Goffar Sampang East Java");
}

void main() {
  name()
      .then((value) => value.split(" ")) // Future<List<String>>
      .then((value) => value.reversed) // Future<Iterable<String>>
      .then((value) =>
      value.map((e) => e.toUpperCase())) // Future<Iterable<String>>
      .then((value) => print(value));
  print("Done");
}