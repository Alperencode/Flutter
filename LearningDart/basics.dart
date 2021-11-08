import 'dart:math';

void main(){
  // Hello World
  print('Hello World');

  // Variable Types
  dynamic name = "alperen";
  name = 10;
  String stringVar = "Hello";    // String
  int intVar = 10;              // Integer
  double doubleVar = 3.14;     // Double
  late int lateInt;           // 'late': declaring the value later
  bool boolVar = true;       // Boolean
  String? nullVar;          // null
  final finalVar = 100;    // Const var
  print("Name: ${stringVar is int}");

  // Converting
  String _name = "alperen";
  // int _number = int.parse(_name);  // Converted string into integer 
  //_name = _number.toString();     // Converted integer into string 


  // Operations and If-else
  var number1 = 20;
  var number2 = 15;
  var age = 17;

  if(number1 > number2){
    print("number1 is greater than number2");
  }else if(number1 == number2){
    print("numbers are equal");
  }else{
    print("number2 is greater than number1");
  }

  var canVote = (age >= 18) ? true : false;  // If age greater than 18 ==> canVote will be true
  if(canVote){
    print("Person can vote");
  }else{
    print("Person cannot vote");
  }
  
  // Switch-case
  var weather = "day";

  switch(weather){
    case "day":
      print("Its Day time");
      break;

    case "night":
      print("Its night time");
      break;

    default:
      print("Idk");
  }

  // Random
  Random randomInt = new Random();  // Random
  print("Random: ${randomInt.nextInt(100)}");   // declaring the max value with nextInt(max)

  // Strings
  String multiLine ="""I
  am
  Alperen""";
  print(multiLine);
  String s1 = "Hello World";
  /*
  s1.toUpperCase
  s1.toLowerCase
  s1.contains("Hello")
  s1.startsWith("Hello")
  s1.endsWith("World")
  s1.substring(int1,int2) 
  s1.replaceAll(RegExp("World"),"Everyone")
  s1.split(",")
  s1.trim()
   
  */
}