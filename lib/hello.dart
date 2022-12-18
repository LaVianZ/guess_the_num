//top level variable
import 'dart:math';
var x = 10;
//top level function
void main (){
  int i = 123;
  //Random r = Random();
  var r = Random();
  var s = "สวัสดี $i";
  print(s);
  var g;
  g = 100;
  print(g);
  g = "samuel";
  print(g);
  g = 1.11;
  print(g);
  g = 'samle';
  print(g.toUpperCase());
  int? d;//อาจจะnull
  int? f1(){
    return 5;
  }

  int a = f1()!;//ไม่nullชัวร์
  //a = f1();
  const ij = 25; //ไม่ใช้เมม แทนค่าก่อนcompile
  final ji = 55;
  ij=26;
  ji=555;
  int b =1;
  final nono=b+1;

}