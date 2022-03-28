import 'house.dart';
import 'person.dart';
import 'warnings.dart';
import 'man.dart';

void main(){
  var alperen = Person("Alperen",18,"Student");
  var efe = Person("Efe",18,"Archaeologist");
  print(alperen);
  print(efe);
  print("Number of people: ${Person.GetCounter()}");

  var house1 = House(windows: 10, doors:2, typeOfWalls: "Tiles");
  print(house1.windows);
  
  print("");
  print(Warnings.loading);
  print(Warnings.nameError);
  print(Warnings.passwordError);
  print(Warnings.doubleValue(10));

  var man1 = Man(name: "Alperen", age: 18, job: "Developer", salary: 6500);
  print(man1.salary);
}