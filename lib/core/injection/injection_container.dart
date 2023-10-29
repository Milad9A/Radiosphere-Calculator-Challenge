import 'package:get_it/get_it.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/bloc/calculator_bloc.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/repositories/calculator_repository.dart';
import 'package:radiosphere_calculator_challenge/features/calculator/data/repositories/calculator_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// BLoCs
  sl.registerFactory(
    () => CalculatorBloc(
      repository: sl<CalculatorRepository>(),
    ),
  );

  /// Repositories
  sl.registerLazySingleton<CalculatorRepository>(
    () => CalculatorRepositoryImpl(),
  );
}
