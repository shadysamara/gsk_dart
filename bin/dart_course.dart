import 'db_helper.dart';

void main(List<String> arguments) {
  var color1 = MyColor(12, 45, 32);
  var color2 = MyColor(20, 30, 10);
  var color3 = color1 + color2;
  print(color3.red);
}

//static
//final
//const
//var
//dynamic
enum ColorType { rgb, cmyk }

class MyColor {
  int red;
  int green;
  int blue;
  MyColor(this.red, this.green, this.blue);
  MyColor operator +(MyColor color) {
    return MyColor(red + color.red, green + color.green, blue + color.blue);
  }
}

class Student {
  int age;
  Student(this.age);
}

class Color {
  String color;
  ColorType colorType;
  Color.rgb(String color) {
    print('rgb color is $color');
  }
  Color.cmyk(String color) {
    print('cmyk color is $color');
  }
  factory Color(ColorType colorType, String color) {
    if (colorType == ColorType.rgb) {
      return Color.rgb(color);
    } else if (colorType == ColorType.cmyk) {
      return Color.cmyk(color);
    }
  }
}
// enum Gender { male, female }

// class Human {
//   String name;
//   Gender gender;
//   String address;

//   printHello() {
//     print('hello from human class');
//   }

//   printBye() {
//     print('good buy from human class');
//   }
// }

// mixin Employee on Human{
//   String department;
// }

// class Student implements Human {
//   @override
//   String address;

//   @override
//   Gender gender;

//   @override
//   String name;

//   @override
//   printBye() {
//     // TODO: implement printBye
//     throw UnimplementedError();
//   }

//   @override
//   printHello() {
//     // TODO: implement printHello
//     throw UnimplementedError();
//   }
// }

// class Teacher with Human,Employee {}

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
