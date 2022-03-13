
class EmptyStringException implements Exception{
  final String message;
  EmptyStringException([this.message = 'Target must not be empty']);

  @override
  String toString() {
    return message;
  }
}