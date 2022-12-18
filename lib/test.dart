void main(){
  var p = Person("Pimrose", "autodus",20);
  var kokokrunch = Product("kokokrunch", 25);
  print(kokokrunch.name);
  var kokokrunchduo = Product("kokokrunchduo", 25);
  print(kokokrunchduo.price);
  kokokrunch = Product("kokokrunchshy", 25,orderNumber: 2255545);
  print(kokokrunch.orderNumber);
}

class Person{
  final String firstname;
  final String lastname;
  final int age;
  /*Full syntax
  Person(String firstname,String lastname,int age){
    this.firstname = firstname blahๆๆ
  }
   */
  Person(this.firstname,this.lastname,this.age);
}
class Product{
   String name;
   int price;
   int orderNumber;
  /*Full syntax
  Person(String firstname,String lastname,int age){
    this.firstname = firstname blahๆๆ
  }
   */
  Product(this.name,this.price,{this.orderNumber=0});
}