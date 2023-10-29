import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  static Page page() {
    return const MaterialPage<void>(
      child: ResultPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: BlocSelector<CalculatorBloc, CalculatorState,
                  CalculatorStatus>(
                selector: (state) => state.status,
                builder: (context, status) {
                  return status.maybeMap(
                    calculated: (value) => Text(
                      'Result: ${value.result.toString()}',
                      style: const TextStyle(fontSize: 32),
                    ),
                    error: (value) => Text(
                      value.message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              onPressed: () {
                context
                    .read<CalculatorBloc>()
                    .add(const CalculatorEvent.processRestarted(
                      softRestart: false,
                    ));
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
