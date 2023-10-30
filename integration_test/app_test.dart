import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:radiosphere_calculator_challenge/core/consts/error_messages.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/presentation/pages/operation_selection_page.dart';
import 'package:radiosphere_calculator_challenge/core/injection/injection_container.dart'
    as di;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await di.init();
  late CalculatorBloc calculatorBloc;

  group('Calculator App Integration Test', () {
    setUp(() {
      calculatorBloc = di.sl<CalculatorBloc>();
    });

    tearDown(() {
      calculatorBloc.close();
    });

    testWidgets(
      'perform addition and show result',
      (tester) async {
        await tester.pumpWidget(
          BlocProvider.value(
            value: calculatorBloc,
            child: const MaterialApp(
              home: OperationSelectionPage(),
            ),
          ),
        );

        // Choose the addition operation
        await tester.tap(find.text(Operation.addition.title));
        await tester.pumpAndSettle();

        // Input first operand as '5'.
        await tester.enterText(find.byType(TextField), '5');
        await tester.tap(find.text('Enter'));
        await tester.pumpAndSettle();

        // Input second operand as '3'.
        await tester.enterText(find.byType(TextField), '3');
        await tester.tap(find.text('Enter'));
        await tester.pumpAndSettle();

        // Assert result is 8.
        expect(find.text('Result: 8.0'), findsOneWidget);

        // Restart the calculation
        await tester.tap(find.text('Restart'));
        await tester.pumpAndSettle();

        // Assert back on OperationSelectionPage.
        expect(find.text(Operation.addition.title), findsOneWidget);
      },
    );

    testWidgets('perform subtraction and show result', (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: calculatorBloc,
          child: const MaterialApp(
            home: OperationSelectionPage(),
          ),
        ),
      );

      // Choose the subtraction operation.
      await tester.tap(find.text(Operation.subtraction.title));
      await tester.pumpAndSettle();

      // Input first operand as '10'.
      await tester.enterText(find.byType(TextField), '10');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Input second operand as '4'.
      await tester.enterText(find.byType(TextField), '4');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Assert result is 6.
      expect(find.text('Result: 6.0'), findsOneWidget);

      // Restart the calculation
      await tester.tap(find.text('Restart'));
      await tester.pumpAndSettle();

      // Assert back on OperationSelectionPage.
      expect(find.text(Operation.subtraction.title), findsOneWidget);
    });

    testWidgets('perform multiplication and show result', (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: calculatorBloc,
          child: const MaterialApp(
            home: OperationSelectionPage(),
          ),
        ),
      );

      // Choose the multiplication operation.
      await tester.tap(find.text(Operation.multiplication.title));
      await tester.pumpAndSettle();

      // Input first operand as '5'.
      await tester.enterText(find.byType(TextField), '5');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Input second operand as '3'.
      await tester.enterText(find.byType(TextField), '3');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Assert result is 15.
      expect(find.text('Result: 15.0'), findsOneWidget);

      // Restart the calculation
      await tester.tap(find.text('Restart'));
      await tester.pumpAndSettle();

      // Assert back on OperationSelectionPage.
      expect(find.text(Operation.multiplication.title), findsOneWidget);
    });

    testWidgets(
        'error handling when square root of a negative number is attempted',
        (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: calculatorBloc,
          child: const MaterialApp(
            home: OperationSelectionPage(),
          ),
        ),
      );

      // Select the square root operation.
      await tester.tap(find.text(Operation.squareRoot.title));
      await tester.pumpAndSettle();

      // Enter a negative operand.
      await tester.enterText(find.byType(TextField), '-5');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Verify the error message on the ResultPage.
      expect(find.text(ErrorMessages.cantFindSqrtOfNeg), findsOneWidget);
    });

    testWidgets('error handling when division by zero is attempted',
        (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: calculatorBloc,
          child: const MaterialApp(
            home: OperationSelectionPage(),
          ),
        ),
      );

      // Select the division operation.
      await tester.tap(find.text(Operation.division.title));
      await tester.pumpAndSettle();

      // Enter the first operand.
      await tester.enterText(find.byType(TextField), '10');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Enter zero as the second operand.
      await tester.enterText(find.byType(TextField), '0');
      await tester.tap(find.text('Enter'));
      await tester.pumpAndSettle();

      // Verify the error message on the ResultPage.
      expect(find.text(ErrorMessages.cantDivideByZero), findsOneWidget);
    });
  });
}
