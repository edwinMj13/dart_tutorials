import 'dart:async';

void main() {
  // Create a StreamController
  final controller = StreamController<Future>();

  // Stream listener
  controller.stream.listen(
        (data) {
          print(data);
        },
    onError: (error) => print("Error: $error"),
    onDone: () => print("Stream Closed"),
  );
  controller.sink.add(display());

/*
  // Adding data to the stream
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.addError("Something went wrong");
  controller.sink.add(3);
*/
  // Close the stream
  controller.close();
}
display()async{
  Future.delayed(Duration(seconds: 1)).then((_){
    print("qwert");
  });

}