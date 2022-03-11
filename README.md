<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Utility Extension

Provides useful extensions for primitive data types.

## Getting started

### import package
```dart
import 'package:utility_extension/utility_extension.dart
```

## Features
### List
```dart
List<List<T>> devideInto(int each);
```



## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
List<int> list = [1,2,3,4,5];
List<List<int>> result = list.devideInto(2);
print(result);  // output : [[1,2],[3,4],[5]]
print(result.length)    // output : 3
print(result[0])    // output : [1,2]
```

## Additional information

More features will be added in the future.
