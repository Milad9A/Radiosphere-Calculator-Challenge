import 'package:flutter/material.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/presentation/pages/operation_selection_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injection/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<CalculatorBloc>(),
      child: const MaterialApp(
        home: OperationSelectionPage(),
      ),
    );
  }
}
