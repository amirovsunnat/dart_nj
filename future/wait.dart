void main(List<String> args) async {
  await Future.wait(
    eagerError: true,
    [
      Future.value("Value").then(
        (value) => print("Value ishladi."),
      ),
      Future.value(15).then(
        (value) => print("Ishladi"),
      ),
      Future.error("Error"),
      Future.value(15).then(
        (value) => print("Ishladi 2"),
      ),
    ],
  ).then(
    (value) => print(value),
  );
  ;
}
