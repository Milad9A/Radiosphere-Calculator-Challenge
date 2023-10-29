import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';

part 'calculator_input.freezed.dart';

@freezed
abstract class CalculatorInput with _$CalculatorInput {
  const CalculatorInput._();

  const factory CalculatorInput({
    required Operation operation,
    required List<double> operands,
  }) = _CalculatorInput;
}
