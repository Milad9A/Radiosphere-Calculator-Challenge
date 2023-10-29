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

  const factory CalculatorStatus.idle() = Idle;
  const factory CalculatorStatus.inputting() = Inputting;
  const factory CalculatorStatus.calculated({required double result}) =
      Calculated;
  const factory CalculatorStatus.error({required String message}) = Error;
}
