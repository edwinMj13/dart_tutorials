import 'dart:isolate';

void main(){

}
/*
Future createIsolates() async {
  // send and receive messages we need receive port
  ReceivePort receivePort = ReceivePort();
  SendPort childSendPort = await receivePort.first;
  // spawn creates us an isolates to use
  Isolate.spawn((SendPort mainSendPort){
    ReceivePort childReceivePort = ReceivePort();
    mainSendPort.send(childReceivePort.sendPort);
  }, receivePort.sendPort);
  return null;
}*/