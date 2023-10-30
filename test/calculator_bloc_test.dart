import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:radiosphere_calculator_challenge/core/consts/error_messages.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';
import 'package:radiosphere_calculator_challenge/core/injection/injection_container.dart'
    as di;

void main() async {
  await di.init();
  late CalculatorBloc calculatorBloc;

  setUp(() {
    calculatorBloc = di.sl<CalculatorBloc>();
  });

  tearDown(() {
    calculatorBloc.close();
  });

  group(
    'CalculatorBloc Test',
    () {
      test(
        'initial state is correct',
        () {
          expect(
            calculatorBloc.state,
            CalculatorState.empty,
          );
        },
      );
      blocTest<CalculatorBloc, CalculatorState>(
        'emits inputting state when OperationSelected event is added',
        build: () => calculatorBloc,
        act: (bloc) => bloc.add(
          const OperationSelected(operation: Operation.addition),
        ),
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          )
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'emits correct state with operand and position incremented when OperandEntered event is added',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0));
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'emits error state when CalculationRequested event is added without selecting an operation',
        build: () => calculatorBloc,
        act: (bloc) => bloc.add(const CalculatorEvent.calculationRequested()),
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.error(
              message: ErrorMessages.noOperationSelected,
            ),
            selectedOperation: null,
            currentOperandPosition: null,
            operands: [],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'emits error state when CalculationRequested event is added with a number of operands that is less than operation permits',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.error(
              message: ErrorMessages.wrongNumberOfOperands,
            ),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'emits error state when CalculationRequested event is added with a number of operands that is more than operation permits',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.operandEntered(
                operand: 7, operandPosition: 1))
            ..add(const CalculatorEvent.operandEntered(
                operand: 3, operandPosition: 2))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 2,
            operands: [5, 7],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 3,
            operands: [5, 7, 3],
          ),
          const CalculatorState(
            status: CalculatorStatus.error(
              message: ErrorMessages.wrongNumberOfOperands,
            ),
            selectedOperation: Operation.addition,
            currentOperandPosition: 3,
            operands: [5, 7, 3],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should replace operand if operand is re-entered in the same position',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.operandEntered(
                operand: 7, operandPosition: 0));
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [7],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should not clear operands for soft restart',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.processRestarted(softRestart: true));
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.idle(),
            selectedOperation: null,
            currentOperandPosition: null,
            operands: [5],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should clear operands for hard restart',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.addition))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.processRestarted(softRestart: false));
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.addition,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.idle(),
            selectedOperation: null,
            currentOperandPosition: null,
            operands: [],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should correctly calculate multiplication',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.multiplication))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.operandEntered(
                operand: 4, operandPosition: 1))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.multiplication,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.multiplication,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.multiplication,
            currentOperandPosition: 2,
            operands: [5, 4],
          ),
          const CalculatorState(
            status: CalculatorStatus.calculated(result: 20.0),
            selectedOperation: Operation.multiplication,
            currentOperandPosition: 2,
            operands: [5, 4],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should correctly calculate square root for positive numbers',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.squareRoot))
            ..add(const CalculatorEvent.operandEntered(
                operand: 25, operandPosition: 0))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 1,
            operands: [25],
          ),
          const CalculatorState(
            status: CalculatorStatus.calculated(result: 5.0),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 1,
            operands: [25],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should throw an error for square root of negative numbers',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.squareRoot))
            ..add(const CalculatorEvent.operandEntered(
                operand: -25, operandPosition: 0))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 1,
            operands: [-25],
          ),
          const CalculatorState(
            status: CalculatorStatus.error(
              message: ErrorMessages.cantFindSqrtOfNeg,
            ),
            selectedOperation: Operation.squareRoot,
            currentOperandPosition: 1,
            operands: [-25],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should throw an error when dividing by zero',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.division))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.operandEntered(
                operand: 0, operandPosition: 1))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 2,
            operands: [5, 0],
          ),
          const CalculatorState(
            status: CalculatorStatus.error(
              message: ErrorMessages.cantDivideByZero,
            ),
            selectedOperation: Operation.division,
            currentOperandPosition: 2,
            operands: [5, 0],
          ),
        ],
      );

      blocTest<CalculatorBloc, CalculatorState>(
        'should correctly divide when not dividing by zero',
        build: () => calculatorBloc,
        act: (bloc) {
          bloc
            ..add(const CalculatorEvent.operationSelected(
                operation: Operation.division))
            ..add(const CalculatorEvent.operandEntered(
                operand: 5, operandPosition: 0))
            ..add(const CalculatorEvent.operandEntered(
                operand: 2, operandPosition: 1))
            ..add(const CalculatorEvent.calculationRequested());
        },
        expect: () => [
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 0,
            operands: [],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 1,
            operands: [5],
          ),
          const CalculatorState(
            status: CalculatorStatus.inputting(),
            selectedOperation: Operation.division,
            currentOperandPosition: 2,
            operands: [5, 2],
          ),
          const CalculatorState(
            status: CalculatorStatus.calculated(result: 2.5),
            selectedOperation: Operation.division,
            currentOperandPosition: 2,
            operands: [5, 2],
          ),
        ],
      );
    },
  );
}
