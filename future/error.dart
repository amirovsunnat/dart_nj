import 'custom_exception.dart';

void main(List<String> args) async {
  Future<void> errorFuture = await Future.error(
      CustomException("Bu exception custom exceptiondan qaytdi"));

  errorFuture.catchError((error) {
    print(error);
  });
}
