import 'dart:math';

import 'package:radiosphere_calculator_challenge/core/consts/error_messages.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/calculator_input.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/repositories/calculator_repository.dart';

class CalculatorRepositoryImpl implements CalculatorRepository {
  @override
  double calculate({
    required CalculatorInput calculatorInput,
  }) {
    if (calculatorInput.operands.length !=
        calculatorInput.operation.operandsCount) {
      throw Exception(ErrorMessages.wrongNumberOfOperands);
    }
    switch (calculatorInput.operation) {
      case Operation.addition:
        return _calculateAddition(calculatorInput);
      case Operation.subtraction:
        return _calculateSubtraction(calculatorInput);
      case Operation.multiplication:
        return _calculateMultiplication(calculatorInput);
      case Operation.division:
        return _calculateDivision(calculatorInput);
      case Operation.squareRoot:
        return _calculateSquareRoot(calculatorInput);
    }
  }

  double _calculateAddition(CalculatorInput input) {
    return input.operands[0] + input.operands[1];
  }

  double _calculateSubtraction(CalculatorInput input) {
    return input.operands[0] - input.operands[1];
  }

  double _calculateMultiplication(CalculatorInput input) {
    return input.operands[0] * input.operands[1];
  }

  double _calculateDivision(CalculatorInput input) {
    if (input.operands[1] == 0) {
      throw Exception(ErrorMessages.cantDivideByZero);
    }
    return input.operands[0] / input.operands[1];
  }

  double _calculateSquareRoot(CalculatorInput input) {
    if (input.operands[0].isNegative) {
      throw Exception(ErrorMessages.cantFindSqrtOfNeg);
    }
    return sqrt(input.operands[0]);
  }
}
