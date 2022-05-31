
import 'package:utility_extension/src/exception/empty_string_exception.dart';

extension StringExtension on String{

  /// Transform into Snakecase and Return it
  String toSnakeCase(){
    String str = '';

    _separateToList().map((e){
      str += e.toLowerCase() + '_';
    }).toList();

    return str.substring(0,str.length-1);
  }

  /// Transform into ConstantCase and Return it
  String toConstantCase(){
    String str = '';

    _separateToList().map((e){
      str += e.toUpperCase() + '_';
    }).toList();

    return str.substring(0, str.length-1);
  }

  /// Transform into CamelCase and Return it
  String toCamelCase(){
    String str = '';
    List<String> list = _separateToList();

    str += list[0][0].toLowerCase() + list[0].substring(1);
    for(int i=1; i<list.length; i++){
      str += list[i][0].toUpperCase() + list[i].substring(1);
    }

    return str;
  }

  /// Return each letter in order and repeat it.
  Iterable<Type> map<Type>(Type Function(String e) toElement) sync*{
    for(int i=0; i<length; i++){
      yield toElement(this[i]);
    }
  }

  /// It works like map, but it also has a index
  Iterable<Type> mapWithIndex<Type>(Type Function(int index, String e) toElement) sync*{
    for(int i=0; i<length; i++){
      yield toElement(i, this[i]);
    }
  }


  List<String> _separateToList(){
    if(isEmpty) throw EmptyStringException();
    List<String> list = [];

    split(RegExp(r'[-_\s]')).map((e){
      int last = 0;   
      for(int i=0; i<e.length; i++){
        if(_isCapital(e[i]) && i !=0){
          list.add(e.substring(last,i));
          last = i;
        }
      }
      list.add(e.substring(last));
    }).toList();

    return list;
  }  

  bool _isCapital(String str){
    return (String.fromCharCode(str.codeUnits[0]+32) == str.toLowerCase());
  }

}