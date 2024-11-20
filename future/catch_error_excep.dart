void main(List<String> args) {
  Future<int> future = Future.error('Xato yuz berdi!');

  future.onError(
    (error, stackTrace) {
      print(error);
      return 0;
    },
  ).then(
    (value) => print("NATIJA: $value"),
  );

  // future
  //     .then(
  //   (value) => print("Value"),
  // )
  //     .catchError(
  //   (error) {
  //     print(error);
  //   },
  //   test: (error) => error is int,
  // ).then(
  //   (value) => print("Exception turi: Exception......."),
  // );
}
