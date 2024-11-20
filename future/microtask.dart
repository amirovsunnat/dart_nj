void main() async {
  print('Boshlang\'ich xabar');

  await Future.delayed(Duration(seconds: 1), () {
    print('1 soniya kutildi!');
  });

  await Future.microtask(() {
    print('Bu mikro vazifa');
    return 42;
  }).then((result) {
    print('Mikro vazifa natijasi: $result');
  });

  print('Yakuniy xabar');
}
