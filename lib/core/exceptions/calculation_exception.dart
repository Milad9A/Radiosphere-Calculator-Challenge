class CalculationException implements Exception {
  final String message;

  CalculationException(this.message);

  @override
  String toString() {
    return message;
  }
}
