import 'dart:async';

void main() {
  var stream = Stream.fromIterable([]);

  // var squareTransformer = StreamTransformer<int, int>.fromHandlers(
  //   handleData: (data, sink) {
  //     sink.add(data * data);
  //   },
  // );

  var transformedStream = stream.transform(CustomStreamTransform());

  transformedStream.listen(
    (data) => print('Kvadrat: $data'),
    onDone: () => print('Stream tugadi'),
  );
}

class CustomStreamTransform extends StreamTransformerBase<int, int> {
  @override
  Stream<int> bind(Stream stream) {
    StreamController<int> streamController = StreamController<int>();

    stream.listen(
      (son) {
        streamController.add(son * son);
      },
    );

    return streamController.stream;
  }
}
