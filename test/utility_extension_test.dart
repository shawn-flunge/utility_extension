import 'package:utility_extension/utility_extension.dart';
import 'package:utility_extension/src/list_extension.dart';
import 'package:utility_extension/src/string_extension.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {

    List<int> list = [1,2,3,4,5];

    test('First Test', () {
      expect(list.devideInto(each: 2), [[1,2],[3,4],[5]]);
    });

    test('String extension',(){
      String str = 'Utility Extension is good';

      expect(str.toCamelCase(), 'utilityExtensionIsGood');
      expect(str.toConstantCase(), 'UTILITY_EXTENSION_IS_GOOD');
      expect(str.toSnakeCase(), 'utility_extension_is_good');
      expect(str.toLowerCase(), 'utility extension is good');
      expect(str.toUpperCase(), 'UTILITY EXTENSION IS GOOD');
    });
  });
}
