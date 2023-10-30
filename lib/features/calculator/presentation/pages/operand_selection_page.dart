import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radiosphere_calculator_challenge/core/consts/regex_expressions.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/presentation/pages/result_page.dart';

class OperandSelectionPage extends StatefulWidget {
  final int operandPosition;

  const OperandSelectionPage({
    super.key,
    required this.operandPosition,
  });

  static Page page({required int operandPosition}) {
    return MaterialPage<void>(
      child: OperandSelectionPage(
        operandPosition: operandPosition,
      ),
    );
  }

  @override
  State<OperandSelectionPage> createState() => _OperandSelectionPageState();
}

class _OperandSelectionPageState extends State<OperandSelectionPage> {
  final TextEditingController _operandController = TextEditingController();

  @override
  void dispose() {
    _operandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CalculatorBloc, CalculatorState>(
      listenWhen: (previous, current) {
        return (previous.currentOperandPosition !=
                    current.currentOperandPosition ||
                !listEquals(previous.operands, current.operands)) &&
            current.status == const CalculatorStatus.inputting();
      },
      listener: (context, state) {
        if (state.canCalculate) {
          context
              .read<CalculatorBloc>()
              .add(const CalculatorEvent.calculationRequested());
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ResultPage(),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => OperandSelectionPage(
                operandPosition: state.currentOperandPosition ?? 0,
              ),
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Operand #${widget.operandPosition + 1}'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 32),
            BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) {
                return state.status.maybeMap(
                  inputting: (value) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Operation: ${state.selectedOperation!.name}'),
                        for (var i = 0; i < state.operands.length; i++)
                          Text(
                            'Operand number ${i + 1} is: ${state.operands[i]}',
                          ),
                      ],
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            const SizedBox(height: 8),
            BlocBuilder<CalculatorBloc, CalculatorState>(
              buildWhen: (previous, current) =>
                  listEquals(previous.operands, current.operands),
              builder: (context, state) {
                if (state.operands.length > widget.operandPosition) {
                  _operandController.text =
                      state.operands[widget.operandPosition].toString();
                }
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _operandController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'Enter operand',
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                        RegexExpression.allowFloatingPointNumbers,
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.read<CalculatorBloc>().add(
                      CalculatorEvent.operandEntered(
                        operand: double.parse(_operandController.text),
                        operandPosition: widget.operandPosition,
                      ),
                    );
              },
              child: const Text('Enter'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => _onCancel(context),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }

  void _onCancel(BuildContext context) {
    context
        .read<CalculatorBloc>()
        .add(const CalculatorEvent.processRestarted(softRestart: true));
    Navigator.popUntil(context, (route) => route.isFirst);
  }
}
