Stream<int> getStreamNumbers() async* {
  for (int i = 0; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if (i == 3) {
      throw Exception("Son uchga teng bo'lib qoldi........");
    }
  }
}

// String onError() {
//   return "Xato yuz berdi";
// }

void main(List<String> args) {
  getStreamNumbers().listen(
    (son) {
      print(son);
    },
    cancelOnError: false,
    onDone: () => print("Stream tugadi........"),
    onError: (error) {
      print(error);
      // return error;
    },
  );
}
