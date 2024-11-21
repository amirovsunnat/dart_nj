import 'dart:io';

void main(List<String> args) async {
  File file = File("example.txt");

  Stream<List<int>> file1 = file.openRead();

  file1.listen(
    (event) => print(String.fromCharCodes(event)),
  );

  await for (final i in file1) {
    print(i);
    for (final j in i) {
      print(String.fromCharCode(j));
    }
  }
}
