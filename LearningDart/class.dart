class Person{
  late String name;
  late String job;
  late int age;
  static int counter = 0;

  Person(String name, int age, String job){
    this.name = name;
    this.age = age;
    this.job = job;
    Person.counter++;
  }  
}
void main(){
  var alperen = Person("Alperen",18,"Student");
  print(alperen.name);
  print(alperen.age);
  print(alperen.job);
  print(Person.counter);

}

