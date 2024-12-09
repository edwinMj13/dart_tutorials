import 'package:dart_console_application/dart_console_application.dart'
as dart_console_application;

/*
void main(){
    List<int> scores = [2,4,3,7,4,9];
    for(int i=0;i<scores.length;i++){
      print("Scores - ${scores[i]}");
    }
    print("\nFOR IN\n");
    for(var score in scores){
      print("Scores - ${score}");
    }
}

*/

// Class
void main() {
  var a = A(a: 2,b: 3);
  var insTwo = A(a: 2,b: 3);
  print("a._private  -  ${a._private}");
  a..a = 101
    ..a = 102
  ..a = 103;
  print("a.a  -  ${a.a}");
  print("a.b  -  ${a.b}");
  print("a.c  -  ${a.c}");
  a.d = 90;
  print("a.d  -  ${a.d}");
  a.e = 100;
  print("a.e  -  ${a.e}");
  print("a.f  -  ${a.f}");
  print("a.g  -  ${A.g}");
  A.h = 12;
  print("a.h  -  ${A.h}");
  print("a.i  -  ${A.i}");
  A.j = 105;
  print("a.j  -  ${A.j}");
  print("a.k  -  ${A.k}");
print("object ${A.fromJson(json:{"a":9,"b":10})}");
print(a.rec(10));
print("EveryThing");
print("\n ${a.display()}");

print("New Instance");

print("\n ${insTwo.displayTwo()}");
}

class A {
  A({required this.a,required this.b});
  A.fromJson({required Map<String, dynamic> json}):a=json["a"],b=json["b"];
  int? _private;

  @override
  String toString() {
    return "A(a: $a, b: $b)";
  }

  rec(int n){
    if(n<=1){
      return 1;
    }else{
      return n * rec(n-1);
    }
  }

  int? a;
  int b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int f = 5;

  static int g = 6;
  static late int h;
  static late int i = 7;
  static late final int j;

  static const int k = 10;

display(){
  print("A, -$a \n"
      "B - $b \n"
      "C - $c \n"
      "D - $d \n"
      "E - $e \n"
      "F - $f \n"
      "G - $g \n"
      "H - $h \n"
      "I - $i \n"
      "J - $j \n"
      "K - $k \n");
}
displayTwo(){
  print("A - $a \n"
      "B - $b");
}
}


/*

// Class Starting


void main(List<String> arguments) {
 var a = A();
 var a2 = A();
 print("Identical ${identical(a,a2)}");
 print("Hash Code ${a.hashCode}");
 print("runtimeType ${a.runtimeType}");
 print("toString ${a.toString()}");
}
class A {

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}*/