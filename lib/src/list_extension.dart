
import 'package:utility_extension/src/exception/over_length_exception.dart';

extension ListExtension<T> on List{

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

  /// It works as map, but it also has a index
  Iterable<T> mapWithIndex(T Function(int index, T e) toElement) sync*{
    for(int i=0; i<length; i++){
      yield toElement(i, this[i]);
    }
  }

}

