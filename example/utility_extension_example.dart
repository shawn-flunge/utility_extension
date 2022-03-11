import 'package:utility_extension/utility_extension.dart';

void main() {
  List<String> fruits = ['apple', 'banana', 'peach', 'grape', 'mellon'];

  var devidedList = fruits.devideInto(each: 2);
  print(devidedList);
  
  devidedList.map((e) => print(e)).toList();
}
