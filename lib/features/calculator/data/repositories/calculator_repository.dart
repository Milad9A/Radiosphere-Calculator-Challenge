import 'package:radiosphere_calculator_challenge/features/calculator/data/models/calculator_input.dart';

abstract class CalculatorRepository {
  double calculate({
    required CalculatorInput calculatorInput,
  });
}
