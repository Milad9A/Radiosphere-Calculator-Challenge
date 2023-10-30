abstract class RegexExpression {
  /// A regex pattern to match floating-point numbers.
  ///
  /// This pattern will allow:
  ///   - Optional leading negative sign (-)
  ///   - One or more digits before a decimal point
  ///   - An optional decimal point (.)
  ///   - Up to two digits after the decimal point
  static RegExp allowFloatingPointNumbers = RegExp(r'^-?(\d+)?\.?\d{0,2}');
}
