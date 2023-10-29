import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/models/operation.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/presentation/pages/operand_selection_page.dart';

class OperationSelectionPage extends StatelessWidget {
  const OperationSelectionPage({super.key});

  static Page page() {
    return const MaterialPage<void>(
      child: OperationSelectionPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: _buildOperationsList(context),
        ),
      ),
    );
  }

  List<Widget> _buildOperationsList(BuildContext context) {
    return Operation.values.map((e) {
      return ElevatedButton(
        onPressed: () {
          context.read<CalculatorBloc>().add(OperationSelected(operation: e));
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  const OperandSelectionPage(operandPosition: 0),
            ),
          );
        },
        child: Text(e.title),
      );
    }).toList();
  }
}
