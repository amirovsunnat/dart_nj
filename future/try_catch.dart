void main() async {
  try {
    await Future.delayed(Duration(seconds: 2), () {
      throw Exception('Xato yuz berdi!');
    });
  } catch (e, stackTrace) {
    print('Xato boshqarildi: $e');
    print('StackTrace: $stackTrace');
  }

  // await Future.delayed(Duration(seconds: 2), () {
  //   throw Exception('Xato yuz berdi!');
  // });
}
