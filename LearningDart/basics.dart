import 'dart:math';

void main(){
  // Hello World
  print('Hello World');

  // Variable Types
  print("\nVariable Section");
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

  print("------------------------------");
  // Operations and if-else
  print("\nOperations and if-else Section");
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
  
  print("------------------------------");
  // Switch-case
  print("\nSwitch-case Section");
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

  print("------------------------------");
  // Random
  print("\nRandom Section");
  Random randomInt = new Random();  // Random
  print("Random: ${randomInt.nextInt(100)}");   // declaring the max value with nextInt(max)

  print("------------------------------");
  // Strings
  print("\nString Section");
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

  print("------------------------------");
  // Lists
  print("\nList Section");
  var l1 = <String>[];                                // Creating empty list
  List<String> l2 = ["Apple","Banana","Lemon"];      // Defining and creating list
  var l3 = [];                                      // Creating a dynamic list
  var sentence = l2.join(" ");                     // Turning list into string
  for(var i in l2){
    print(i);
  }
  print(sentence);
   
  var l4 = [12,21,2,3,4,124,12];
  for(var i = 0; i < l4.length; i++){
      print(l4[i]);
  }

  print("------------------------------");
  // Functions
  print("\nFunction Section");
  int SumNumbers(x,y){
      return x+y;
  }
  int DecNumbers(x,y){
      return x-y;
  }
  String Greeting(name){
      return "\nHello ${name}!";
  }
  void instantGreeting(){
      print("Hi!!");
  }

  print(Greeting("Alperen"));
  instantGreeting(); 
  print("------------------------------");

  // Map (Python Dict)
  print("\nMap Section\n");
  Map<String, int> map1 = new Map<String, int>();
  var hero = {
    "Iron Man":"Tony Start",
    "Age":48,
    "Male":"Male",
  };
  hero["Super Power"] = "Ironman Suit";
  hero.addAll({"Wife":"Pepper Potts"});
  hero.keys.forEach((specials) {print("Keys: ${specials}");}); 
  hero.values.forEach((values) {print("Values: ${values}");}); 
  
}
