class Person{
  /**
    // Basic class initialization and usage
    
   * used static method to count member of class
   */
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
  static int GetCounter(){
    return counter;
  }

}