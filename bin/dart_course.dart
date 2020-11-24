import 'dart:async';
import 'dart:io';
import 'dart:math';

typedef int shadyFun(int x);
typedef String nameFun(String x);
void main(List<String> arguments) {
  var student = Student(
      address: 'gaza', average: 99.0, gender: Gender.male, name: 'omar');
}

enum Gender { male, female }

abstract class Human {
  String name;
  Gender gender;
  String address;
  Human(this.name, this.gender, this.address);
  printAllVariables();
}

class Student extends Human {
  double average;

  Student({String name, Gender gender, String address, this.average})
      : super(name, gender, address);

  @override
  printAllVariables() {
    print('hello from student');
  }
}

class Teacher extends Human {
  double salary;
  Teacher(this.salary, String name, Gender gender, String address)
      : super(name, gender, address);

  @override
  printAllVariables() {
    // TODO: implement printAllVariables
    print('hello from teacher');
  }
}

///////////////////////////////////////////////////////////////////////////
// int x = 2;
// int y = 8;
// x~/y
// x??=5;
// x > y ? print('yes') : print('no');
// assert
//exceptions
// (throw)
// try {
//   if (x < y) {
//     throw TimeoutException('x smaller than y');
//   }
// } on TimeoutException catch (e) {
//   print('time out exception');
// } on IOException catch (e) {
//   print('input output exception');
// } catch (e) {
//   print(e);
// } finally {
//   print('finally');
// }
// print('mamdouh');
////////////////////////////////////////////////////////////////////////////////
/*
String getFullName(
    {String firstName,
    String middleName,
    String lastName,
    nameFun fun1,
    nameFun fun2}) {
  return '${fun1(firstName)} ${fun2(middleName)} ${fun1(lastName)}';
}

String capetalizName(String name) {
  String firestLetter = name[0].toUpperCase();
  String allLetters = name.substring(1);
  return firestLetter + allLetters;
}

String getMiddleLetter(String name) {
  return name[0].toUpperCase() + '.';
}

int sum(int x, int y) {
  return x + y;
}

// hello my name is mohannad
String getFullSentence(String name) {
  List<String> words = name.split(' ');
  print(words);
}

*/

//List,Map,Set
// List<String> list = ['omar', 'shady', 'majd'];
// List marksList = [80, 90, 99, 89, 'ali', 99, 89];
// Set MarkersSet = {};

//add,addAll
//insert,insertAll
//map
//every and any
//reduce
//foreach
//where
//whereType
//isEmpty, isNotEmpty
//reversed

// List namesAndAges = list.map((e) {
//   return 'my name is $e and my age is 8';
// }).toList();
// bool result = list.any((element) {
//   return element.length > 4;
// });
// Map mapy = {'namee': 'omar', 'age': 8, 'isMale': true};
// mapy.keys.forEach((element) {
//   print(mapy[element]);
// });

// if (map.containsKey('mhyName')) {
//   print(map['mhyName']);
// } else {
//   print('not exist');
// }
// var name = getFullName(
//     firstName: 'omar',
//     middleName: 'shady',
//     lastName: 'ali',
//     fun1: capetalizName,
//     fun2: getMiddleLetter);
// print(name);
