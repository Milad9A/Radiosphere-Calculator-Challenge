part of 'calculator_bloc.dart';

@freezed
class CalculatorEvent with _$CalculatorEvent {
  const factory CalculatorEvent.operationSelected({
    required Operation operation,
  }) = OperationSelected;

  const factory CalculatorEvent.operandEntered({
    required double operand,
    required int operandPosition,
  }) = OperandEntered;

  const factory CalculatorEvent.calculationRequested() = CalculationRequested;

  const factory CalculatorEvent.processRestarted({
    required bool softRestart,
  }) = ProcessRestarted;
}
