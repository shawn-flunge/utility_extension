
import 'package:utility_extension/src/exception/over_length_exception.dart';

extension ListExtension<T> on List<T>{

  /// Return nested list as much as the parameter value,
  /// 
  /// List<int> list = [1,2,3,4,5];
  /// 
  /// print(list.devideInto(2));  // [[1,2], [3,4], [5]]
  List<List<T>> devideInto({required int each}){
    if(length < each) throw OverLengthException();
    
    List<List<T>>? list =[];
    List<T> temp = [];

    for(int i=0; i<length; i++){
      if(i%each==0 && i!=0){
        list.add(temp);
        temp =[];
      }
      temp.add(this[i]);
    }
    list.add(temp);

    return list;
  }

  /// it works like "sublist" but also can use a negative parameter
  /// 
  /// List<int> slicedList = list.slice(start: -3, end: -1);
  /// 
  /// print(slicedList); // [3, 4]
  List<T> slice({int start = 0, int? end}){

    if(start > length) return [];

    if(start < 0) start = length + start;
    if(start < 0){
      start = 0;
    }

    if(end == null){
      return sublist(start);
    } else{

      if(end >=0){
        if(end < start){
          return [];
        }
        if(end>length) end = length;
      } else{
        end = length + end;
        if(start - end >0){
          return [];
        }
      }
      return sublist(start, end);
    }
  }


  /// It works as map, but it also has a index
  Iterable<T> mapWithIndex(T Function(int index, T e) toElement) sync*{
    for(int i=0; i<length; i++){
      yield toElement(i, this[i]);
    }
  }

}

