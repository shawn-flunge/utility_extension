
class OverLengthException implements Exception{
  OverLengthException([this._message = 'The argument is larger than the length of the list.']);
  final String _message;

  @override
  String toString() {
    return _message;
  }
}