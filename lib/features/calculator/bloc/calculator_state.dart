part of 'calculator_bloc.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const CalculatorState._();

  const factory CalculatorState({
    required CalculatorStatus status,
    required Operation? selectedOperation,
    required int? currentOperandPosition,
    required List<double> operands,
  }) = _CalculatorState;

  static const empty = CalculatorState(
    status: CalculatorStatus.idle(),
    selectedOperation: null,
    currentOperandPosition: null,
    operands: [],
  );

  bool get canCalculate {
    if (selectedOperation == null) return false;
    return operands.length == selectedOperation!.operandsCount;
  }

  bool get canEnterOperand {
    if (selectedOperation == null) return false;
    return operands.length < selectedOperation!.operandsCount;
  }
}

@freezed
class CalculatorStatus with _$CalculatorStatus {
  const CalculatorStatus._();

  const factory CalculatorStatus.idle() = CalculatorIdle;
  const factory CalculatorStatus.inputting() = CalculatorInputting;
  const factory CalculatorStatus.calculated({required double result}) =
      CalculatorCalculated;
  const factory CalculatorStatus.error({required String message}) =
      CalculatorError;
}
