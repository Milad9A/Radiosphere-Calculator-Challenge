import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radiosphere_calculator_challenge/core/consts/error_messages.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/calculator_input.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/repositories/calculator_repository.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';
part 'calculator_bloc.freezed.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({required CalculatorRepository repository})
      : _repository = repository,
        super(CalculatorState(
          status: const CalculatorStatus.idle(),
          selectedOperation: null,
          currentOperandPosition: null,
          operands: List.empty(),
        )) {
    on<CalculatorEvent>((events, emit) {
      events.map(
        operationSelected: (OperationSelected event) =>
            _onOperationSelected(event, emit),
        operandEntered: (OperandEntered event) =>
            _onOperandEntered(event, emit),
        calculationRequested: (CalculationRequested event) =>
            _onCalculationRequested(event, emit),
        processRestarted: (ProcessRestarted event) =>
            _onProcessRestarted(event, emit),
      );
    });
  }

  final CalculatorRepository _repository;

  void _onOperationSelected(
    OperationSelected event,
    Emitter<CalculatorState> emit,
  ) {
    return emit(state.copyWith(
      status: const CalculatorStatus.inputting(),
      selectedOperation: event.operation,
      currentOperandPosition: 0,
    ));
  }

  void _onOperandEntered(
    OperandEntered event,
    Emitter<CalculatorState> emit,
  ) {
    return emit(state.copyWith(
      status: const CalculatorStatus.inputting(),
      currentOperandPosition: event.operandPosition + 1,
      operands: _buildOperandsList(
        state.operands,
        event.operand,
        event.operandPosition,
      ),
    ));
  }

  void _onCalculationRequested(
    CalculatorEvent event,
    Emitter<CalculatorState> emit,
  ) {
    try {
      if (state.selectedOperation == null) {
        return emit(
          state.copyWith(
            status: const CalculatorStatus.error(
              message: ErrorMessages.noOperationSelected,
            ),
          ),
        );
      }

      final result = _repository.calculate(
        calculatorInput: CalculatorInput(
          operation: state.selectedOperation!,
          operands: state.operands,
        ),
      );

      return emit(
        state.copyWith(status: CalculatorStatus.calculated(result: result)),
      );
    } catch (e) {
      return emit(
        state.copyWith(status: CalculatorStatus.error(message: e.toString())),
      );
    }
  }

  void _onProcessRestarted(
    ProcessRestarted event,
    Emitter<CalculatorState> emit,
  ) {
    return emit(state.copyWith(
      status: const CalculatorStatus.idle(),
      selectedOperation: null,
      currentOperandPosition: null,
      operands: event.softRestart ? state.operands : List.empty(),
    ));
  }

  List<double> _buildOperandsList(
    List<double> operands,
    double newOperand,
    int operandPosition,
  ) {
    if (operands.length > operandPosition) {
      return List.from(operands)..[operandPosition] = newOperand;
    }
    return List.from(operands)..insert(operandPosition, newOperand);
  }
}
