import 'package:utility_extension/utility_extension.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {

    List<int> list = [1,2,3,4,5];

    test('First Test', () {
      expect(list.devideInto(each: 2), [[1,2],[3,4],[5]]);
    });

    test('String extension',(){
      String str = 'Utility Extension is good';

      print(str.toCamelCase());
      print(str.toConstantCase());
      print(str.toSnakeCase());

      expect(str.toCamelCase(), 'utilityExtensionIsGood');
      expect(str.toConstantCase(), 'UTILITY_EXTENSION_IS_GOOD');
      expect(str.toSnakeCase(), 'utility_extension_is_good');
    });
  });
}
