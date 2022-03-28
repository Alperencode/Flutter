import 'dart:developer';

import 'person.dart';

class Man extends Person{
  /**
   * Inheritance
   * 
   * Created a sub class of Person class
   * so Man will be sub and Person will be super class
   */
  String _salary;
  Man({required String name,required int age,required String job, required int salary}):
  _salary = "\$"+ salary.toString(),
  super(name, age, job); 
  
  String get salary => _salary; 

}