// void main() {
//   print('Start');
//   print('Fetching data...');
//   print('Data fetched!');
//   print('End');
// }

void main() async {
  print('Start');
  fetchData();
  fetchData1();
  print('End');
}

Future<void> fetchData() async {
  print('Fetching data...');

  await Future.delayed(Duration(seconds: 3));
}

Future<void> fetchData1() async {
  print('Fetching data... 2');
  await Future.delayed(Duration(seconds: 3));
}
