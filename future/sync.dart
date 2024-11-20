void main(List<String> args) async {
  Future<String> syncFunksiya = Future.sync(
    () async {
      // return "Asadbek";
      final newFuture = await Future.value("10");
      return newFuture;
    },
  );

  syncFunksiya.then(
    (value) => print(
      "Hurmatli: $value. Sizni safimizda ko'rib turganimizdan xursandmiz 😉, 42 jamoasiga xush kelibsiz.",
    ),
  );
}
