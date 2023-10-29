// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Operation operation) operationSelected,
    required TResult Function(double operand, int operandPosition)
        operandEntered,
    required TResult Function() calculationRequested,
    required TResult Function(bool softRestart) processRestarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Operation operation)? operationSelected,
    TResult? Function(double operand, int operandPosition)? operandEntered,
    TResult? Function()? calculationRequested,
    TResult? Function(bool softRestart)? processRestarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Operation operation)? operationSelected,
    TResult Function(double operand, int operandPosition)? operandEntered,
    TResult Function()? calculationRequested,
    TResult Function(bool softRestart)? processRestarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationSelected value) operationSelected,
    required TResult Function(OperandEntered value) operandEntered,
    required TResult Function(CalculationRequested value) calculationRequested,
    required TResult Function(ProcessRestarted value) processRestarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationSelected value)? operationSelected,
    TResult? Function(OperandEntered value)? operandEntered,
    TResult? Function(CalculationRequested value)? calculationRequested,
    TResult? Function(ProcessRestarted value)? processRestarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationSelected value)? operationSelected,
    TResult Function(OperandEntered value)? operandEntered,
    TResult Function(CalculationRequested value)? calculationRequested,
    TResult Function(ProcessRestarted value)? processRestarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorEventCopyWith<$Res> {
  factory $CalculatorEventCopyWith(
          CalculatorEvent value, $Res Function(CalculatorEvent) then) =
      _$CalculatorEventCopyWithImpl<$Res, CalculatorEvent>;
}

/// @nodoc
class _$CalculatorEventCopyWithImpl<$Res, $Val extends CalculatorEvent>
    implements $CalculatorEventCopyWith<$Res> {
  _$CalculatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OperationSelectedImplCopyWith<$Res> {
  factory _$$OperationSelectedImplCopyWith(_$OperationSelectedImpl value,
          $Res Function(_$OperationSelectedImpl) then) =
      __$$OperationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Operation operation});
}

/// @nodoc
class __$$OperationSelectedImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$OperationSelectedImpl>
    implements _$$OperationSelectedImplCopyWith<$Res> {
  __$$OperationSelectedImplCopyWithImpl(_$OperationSelectedImpl _value,
      $Res Function(_$OperationSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
  }) {
    return _then(_$OperationSelectedImpl(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as Operation,
    ));
  }
}

/// @nodoc

class _$OperationSelectedImpl implements OperationSelected {
  const _$OperationSelectedImpl({required this.operation});

  @override
  final Operation operation;

  @override
  String toString() {
    return 'CalculatorEvent.operationSelected(operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationSelectedImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationSelectedImplCopyWith<_$OperationSelectedImpl> get copyWith =>
      __$$OperationSelectedImplCopyWithImpl<_$OperationSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Operation operation) operationSelected,
    required TResult Function(double operand, int operandPosition)
        operandEntered,
    required TResult Function() calculationRequested,
    required TResult Function(bool softRestart) processRestarted,
  }) {
    return operationSelected(operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Operation operation)? operationSelected,
    TResult? Function(double operand, int operandPosition)? operandEntered,
    TResult? Function()? calculationRequested,
    TResult? Function(bool softRestart)? processRestarted,
  }) {
    return operationSelected?.call(operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Operation operation)? operationSelected,
    TResult Function(double operand, int operandPosition)? operandEntered,
    TResult Function()? calculationRequested,
    TResult Function(bool softRestart)? processRestarted,
    required TResult orElse(),
  }) {
    if (operationSelected != null) {
      return operationSelected(operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationSelected value) operationSelected,
    required TResult Function(OperandEntered value) operandEntered,
    required TResult Function(CalculationRequested value) calculationRequested,
    required TResult Function(ProcessRestarted value) processRestarted,
  }) {
    return operationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationSelected value)? operationSelected,
    TResult? Function(OperandEntered value)? operandEntered,
    TResult? Function(CalculationRequested value)? calculationRequested,
    TResult? Function(ProcessRestarted value)? processRestarted,
  }) {
    return operationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationSelected value)? operationSelected,
    TResult Function(OperandEntered value)? operandEntered,
    TResult Function(CalculationRequested value)? calculationRequested,
    TResult Function(ProcessRestarted value)? processRestarted,
    required TResult orElse(),
  }) {
    if (operationSelected != null) {
      return operationSelected(this);
    }
    return orElse();
  }
}

abstract class OperationSelected implements CalculatorEvent {
  const factory OperationSelected({required final Operation operation}) =
      _$OperationSelectedImpl;

  Operation get operation;
  @JsonKey(ignore: true)
  _$$OperationSelectedImplCopyWith<_$OperationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperandEnteredImplCopyWith<$Res> {
  factory _$$OperandEnteredImplCopyWith(_$OperandEnteredImpl value,
          $Res Function(_$OperandEnteredImpl) then) =
      __$$OperandEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double operand, int operandPosition});
}

/// @nodoc
class __$$OperandEnteredImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$OperandEnteredImpl>
    implements _$$OperandEnteredImplCopyWith<$Res> {
  __$$OperandEnteredImplCopyWithImpl(
      _$OperandEnteredImpl _value, $Res Function(_$OperandEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operand = null,
    Object? operandPosition = null,
  }) {
    return _then(_$OperandEnteredImpl(
      operand: null == operand
          ? _value.operand
          : operand // ignore: cast_nullable_to_non_nullable
              as double,
      operandPosition: null == operandPosition
          ? _value.operandPosition
          : operandPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OperandEnteredImpl implements OperandEntered {
  const _$OperandEnteredImpl(
      {required this.operand, required this.operandPosition});

  @override
  final double operand;
  @override
  final int operandPosition;

  @override
  String toString() {
    return 'CalculatorEvent.operandEntered(operand: $operand, operandPosition: $operandPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperandEnteredImpl &&
            (identical(other.operand, operand) || other.operand == operand) &&
            (identical(other.operandPosition, operandPosition) ||
                other.operandPosition == operandPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operand, operandPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperandEnteredImplCopyWith<_$OperandEnteredImpl> get copyWith =>
      __$$OperandEnteredImplCopyWithImpl<_$OperandEnteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Operation operation) operationSelected,
    required TResult Function(double operand, int operandPosition)
        operandEntered,
    required TResult Function() calculationRequested,
    required TResult Function(bool softRestart) processRestarted,
  }) {
    return operandEntered(operand, operandPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Operation operation)? operationSelected,
    TResult? Function(double operand, int operandPosition)? operandEntered,
    TResult? Function()? calculationRequested,
    TResult? Function(bool softRestart)? processRestarted,
  }) {
    return operandEntered?.call(operand, operandPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Operation operation)? operationSelected,
    TResult Function(double operand, int operandPosition)? operandEntered,
    TResult Function()? calculationRequested,
    TResult Function(bool softRestart)? processRestarted,
    required TResult orElse(),
  }) {
    if (operandEntered != null) {
      return operandEntered(operand, operandPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationSelected value) operationSelected,
    required TResult Function(OperandEntered value) operandEntered,
    required TResult Function(CalculationRequested value) calculationRequested,
    required TResult Function(ProcessRestarted value) processRestarted,
  }) {
    return operandEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationSelected value)? operationSelected,
    TResult? Function(OperandEntered value)? operandEntered,
    TResult? Function(CalculationRequested value)? calculationRequested,
    TResult? Function(ProcessRestarted value)? processRestarted,
  }) {
    return operandEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationSelected value)? operationSelected,
    TResult Function(OperandEntered value)? operandEntered,
    TResult Function(CalculationRequested value)? calculationRequested,
    TResult Function(ProcessRestarted value)? processRestarted,
    required TResult orElse(),
  }) {
    if (operandEntered != null) {
      return operandEntered(this);
    }
    return orElse();
  }
}

abstract class OperandEntered implements CalculatorEvent {
  const factory OperandEntered(
      {required final double operand,
      required final int operandPosition}) = _$OperandEnteredImpl;

  double get operand;
  int get operandPosition;
  @JsonKey(ignore: true)
  _$$OperandEnteredImplCopyWith<_$OperandEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculationRequestedImplCopyWith<$Res> {
  factory _$$CalculationRequestedImplCopyWith(_$CalculationRequestedImpl value,
          $Res Function(_$CalculationRequestedImpl) then) =
      __$$CalculationRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculationRequestedImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$CalculationRequestedImpl>
    implements _$$CalculationRequestedImplCopyWith<$Res> {
  __$$CalculationRequestedImplCopyWithImpl(_$CalculationRequestedImpl _value,
      $Res Function(_$CalculationRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculationRequestedImpl implements CalculationRequested {
  const _$CalculationRequestedImpl();

  @override
  String toString() {
    return 'CalculatorEvent.calculationRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Operation operation) operationSelected,
    required TResult Function(double operand, int operandPosition)
        operandEntered,
    required TResult Function() calculationRequested,
    required TResult Function(bool softRestart) processRestarted,
  }) {
    return calculationRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Operation operation)? operationSelected,
    TResult? Function(double operand, int operandPosition)? operandEntered,
    TResult? Function()? calculationRequested,
    TResult? Function(bool softRestart)? processRestarted,
  }) {
    return calculationRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Operation operation)? operationSelected,
    TResult Function(double operand, int operandPosition)? operandEntered,
    TResult Function()? calculationRequested,
    TResult Function(bool softRestart)? processRestarted,
    required TResult orElse(),
  }) {
    if (calculationRequested != null) {
      return calculationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationSelected value) operationSelected,
    required TResult Function(OperandEntered value) operandEntered,
    required TResult Function(CalculationRequested value) calculationRequested,
    required TResult Function(ProcessRestarted value) processRestarted,
  }) {
    return calculationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationSelected value)? operationSelected,
    TResult? Function(OperandEntered value)? operandEntered,
    TResult? Function(CalculationRequested value)? calculationRequested,
    TResult? Function(ProcessRestarted value)? processRestarted,
  }) {
    return calculationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationSelected value)? operationSelected,
    TResult Function(OperandEntered value)? operandEntered,
    TResult Function(CalculationRequested value)? calculationRequested,
    TResult Function(ProcessRestarted value)? processRestarted,
    required TResult orElse(),
  }) {
    if (calculationRequested != null) {
      return calculationRequested(this);
    }
    return orElse();
  }
}

abstract class CalculationRequested implements CalculatorEvent {
  const factory CalculationRequested() = _$CalculationRequestedImpl;
}

/// @nodoc
abstract class _$$ProcessRestartedImplCopyWith<$Res> {
  factory _$$ProcessRestartedImplCopyWith(_$ProcessRestartedImpl value,
          $Res Function(_$ProcessRestartedImpl) then) =
      __$$ProcessRestartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool softRestart});
}

/// @nodoc
class __$$ProcessRestartedImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$ProcessRestartedImpl>
    implements _$$ProcessRestartedImplCopyWith<$Res> {
  __$$ProcessRestartedImplCopyWithImpl(_$ProcessRestartedImpl _value,
      $Res Function(_$ProcessRestartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? softRestart = null,
  }) {
    return _then(_$ProcessRestartedImpl(
      softRestart: null == softRestart
          ? _value.softRestart
          : softRestart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProcessRestartedImpl implements ProcessRestarted {
  const _$ProcessRestartedImpl({required this.softRestart});

  @override
  final bool softRestart;

  @override
  String toString() {
    return 'CalculatorEvent.processRestarted(softRestart: $softRestart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessRestartedImpl &&
            (identical(other.softRestart, softRestart) ||
                other.softRestart == softRestart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, softRestart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessRestartedImplCopyWith<_$ProcessRestartedImpl> get copyWith =>
      __$$ProcessRestartedImplCopyWithImpl<_$ProcessRestartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Operation operation) operationSelected,
    required TResult Function(double operand, int operandPosition)
        operandEntered,
    required TResult Function() calculationRequested,
    required TResult Function(bool softRestart) processRestarted,
  }) {
    return processRestarted(softRestart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Operation operation)? operationSelected,
    TResult? Function(double operand, int operandPosition)? operandEntered,
    TResult? Function()? calculationRequested,
    TResult? Function(bool softRestart)? processRestarted,
  }) {
    return processRestarted?.call(softRestart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Operation operation)? operationSelected,
    TResult Function(double operand, int operandPosition)? operandEntered,
    TResult Function()? calculationRequested,
    TResult Function(bool softRestart)? processRestarted,
    required TResult orElse(),
  }) {
    if (processRestarted != null) {
      return processRestarted(softRestart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OperationSelected value) operationSelected,
    required TResult Function(OperandEntered value) operandEntered,
    required TResult Function(CalculationRequested value) calculationRequested,
    required TResult Function(ProcessRestarted value) processRestarted,
  }) {
    return processRestarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OperationSelected value)? operationSelected,
    TResult? Function(OperandEntered value)? operandEntered,
    TResult? Function(CalculationRequested value)? calculationRequested,
    TResult? Function(ProcessRestarted value)? processRestarted,
  }) {
    return processRestarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OperationSelected value)? operationSelected,
    TResult Function(OperandEntered value)? operandEntered,
    TResult Function(CalculationRequested value)? calculationRequested,
    TResult Function(ProcessRestarted value)? processRestarted,
    required TResult orElse(),
  }) {
    if (processRestarted != null) {
      return processRestarted(this);
    }
    return orElse();
  }
}

abstract class ProcessRestarted implements CalculatorEvent {
  const factory ProcessRestarted({required final bool softRestart}) =
      _$ProcessRestartedImpl;

  bool get softRestart;
  @JsonKey(ignore: true)
  _$$ProcessRestartedImplCopyWith<_$ProcessRestartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalculatorState {
  CalculatorStatus get status => throw _privateConstructorUsedError;
  Operation? get selectedOperation => throw _privateConstructorUsedError;
  int? get currentOperandPosition => throw _privateConstructorUsedError;
  List<double> get operands => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call(
      {CalculatorStatus status,
      Operation? selectedOperation,
      int? currentOperandPosition,
      List<double> operands});

  $CalculatorStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedOperation = freezed,
    Object? currentOperandPosition = freezed,
    Object? operands = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CalculatorStatus,
      selectedOperation: freezed == selectedOperation
          ? _value.selectedOperation
          : selectedOperation // ignore: cast_nullable_to_non_nullable
              as Operation?,
      currentOperandPosition: freezed == currentOperandPosition
          ? _value.currentOperandPosition
          : currentOperandPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      operands: null == operands
          ? _value.operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalculatorStatusCopyWith<$Res> get status {
    return $CalculatorStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculatorStateImplCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$CalculatorStateImplCopyWith(_$CalculatorStateImpl value,
          $Res Function(_$CalculatorStateImpl) then) =
      __$$CalculatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CalculatorStatus status,
      Operation? selectedOperation,
      int? currentOperandPosition,
      List<double> operands});

  @override
  $CalculatorStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CalculatorStateImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorStateImpl>
    implements _$$CalculatorStateImplCopyWith<$Res> {
  __$$CalculatorStateImplCopyWithImpl(
      _$CalculatorStateImpl _value, $Res Function(_$CalculatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedOperation = freezed,
    Object? currentOperandPosition = freezed,
    Object? operands = null,
  }) {
    return _then(_$CalculatorStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CalculatorStatus,
      selectedOperation: freezed == selectedOperation
          ? _value.selectedOperation
          : selectedOperation // ignore: cast_nullable_to_non_nullable
              as Operation?,
      currentOperandPosition: freezed == currentOperandPosition
          ? _value.currentOperandPosition
          : currentOperandPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      operands: null == operands
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$CalculatorStateImpl extends _CalculatorState {
  const _$CalculatorStateImpl(
      {required this.status,
      required this.selectedOperation,
      required this.currentOperandPosition,
      required final List<double> operands})
      : _operands = operands,
        super._();

  @override
  final CalculatorStatus status;
  @override
  final Operation? selectedOperation;
  @override
  final int? currentOperandPosition;
  final List<double> _operands;
  @override
  List<double> get operands {
    if (_operands is EqualUnmodifiableListView) return _operands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'CalculatorState(status: $status, selectedOperation: $selectedOperation, currentOperandPosition: $currentOperandPosition, operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedOperation, selectedOperation) ||
                other.selectedOperation == selectedOperation) &&
            (identical(other.currentOperandPosition, currentOperandPosition) ||
                other.currentOperandPosition == currentOperandPosition) &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedOperation,
      currentOperandPosition, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      __$$CalculatorStateImplCopyWithImpl<_$CalculatorStateImpl>(
          this, _$identity);
}

abstract class _CalculatorState extends CalculatorState {
  const factory _CalculatorState(
      {required final CalculatorStatus status,
      required final Operation? selectedOperation,
      required final int? currentOperandPosition,
      required final List<double> operands}) = _$CalculatorStateImpl;
  const _CalculatorState._() : super._();

  @override
  CalculatorStatus get status;
  @override
  Operation? get selectedOperation;
  @override
  int? get currentOperandPosition;
  @override
  List<double> get operands;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalculatorStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inputting,
    required TResult Function(double result) calculated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inputting,
    TResult? Function(double result)? calculated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inputting,
    TResult Function(double result)? calculated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Inputting value) inputting,
    required TResult Function(Calculated value) calculated,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Inputting value)? inputting,
    TResult? Function(Calculated value)? calculated,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Inputting value)? inputting,
    TResult Function(Calculated value)? calculated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStatusCopyWith<$Res> {
  factory $CalculatorStatusCopyWith(
          CalculatorStatus value, $Res Function(CalculatorStatus) then) =
      _$CalculatorStatusCopyWithImpl<$Res, CalculatorStatus>;
}

/// @nodoc
class _$CalculatorStatusCopyWithImpl<$Res, $Val extends CalculatorStatus>
    implements $CalculatorStatusCopyWith<$Res> {
  _$CalculatorStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$CalculatorStatusCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl extends Idle {
  const _$IdleImpl() : super._();

  @override
  String toString() {
    return 'CalculatorStatus.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inputting,
    required TResult Function(double result) calculated,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inputting,
    TResult? Function(double result)? calculated,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inputting,
    TResult Function(double result)? calculated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Inputting value) inputting,
    required TResult Function(Calculated value) calculated,
    required TResult Function(Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Inputting value)? inputting,
    TResult? Function(Calculated value)? calculated,
    TResult? Function(Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Inputting value)? inputting,
    TResult Function(Calculated value)? calculated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle extends CalculatorStatus {
  const factory Idle() = _$IdleImpl;
  const Idle._() : super._();
}

/// @nodoc
abstract class _$$InputtingImplCopyWith<$Res> {
  factory _$$InputtingImplCopyWith(
          _$InputtingImpl value, $Res Function(_$InputtingImpl) then) =
      __$$InputtingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InputtingImplCopyWithImpl<$Res>
    extends _$CalculatorStatusCopyWithImpl<$Res, _$InputtingImpl>
    implements _$$InputtingImplCopyWith<$Res> {
  __$$InputtingImplCopyWithImpl(
      _$InputtingImpl _value, $Res Function(_$InputtingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InputtingImpl extends Inputting {
  const _$InputtingImpl() : super._();

  @override
  String toString() {
    return 'CalculatorStatus.inputting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InputtingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inputting,
    required TResult Function(double result) calculated,
    required TResult Function(String message) error,
  }) {
    return inputting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inputting,
    TResult? Function(double result)? calculated,
    TResult? Function(String message)? error,
  }) {
    return inputting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inputting,
    TResult Function(double result)? calculated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inputting != null) {
      return inputting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Inputting value) inputting,
    required TResult Function(Calculated value) calculated,
    required TResult Function(Error value) error,
  }) {
    return inputting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Inputting value)? inputting,
    TResult? Function(Calculated value)? calculated,
    TResult? Function(Error value)? error,
  }) {
    return inputting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Inputting value)? inputting,
    TResult Function(Calculated value)? calculated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (inputting != null) {
      return inputting(this);
    }
    return orElse();
  }
}

abstract class Inputting extends CalculatorStatus {
  const factory Inputting() = _$InputtingImpl;
  const Inputting._() : super._();
}

/// @nodoc
abstract class _$$CalculatedImplCopyWith<$Res> {
  factory _$$CalculatedImplCopyWith(
          _$CalculatedImpl value, $Res Function(_$CalculatedImpl) then) =
      __$$CalculatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double result});
}

/// @nodoc
class __$$CalculatedImplCopyWithImpl<$Res>
    extends _$CalculatorStatusCopyWithImpl<$Res, _$CalculatedImpl>
    implements _$$CalculatedImplCopyWith<$Res> {
  __$$CalculatedImplCopyWithImpl(
      _$CalculatedImpl _value, $Res Function(_$CalculatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$CalculatedImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CalculatedImpl extends Calculated {
  const _$CalculatedImpl({required this.result}) : super._();

  @override
  final double result;

  @override
  String toString() {
    return 'CalculatorStatus.calculated(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatedImplCopyWith<_$CalculatedImpl> get copyWith =>
      __$$CalculatedImplCopyWithImpl<_$CalculatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inputting,
    required TResult Function(double result) calculated,
    required TResult Function(String message) error,
  }) {
    return calculated(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inputting,
    TResult? Function(double result)? calculated,
    TResult? Function(String message)? error,
  }) {
    return calculated?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inputting,
    TResult Function(double result)? calculated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Inputting value) inputting,
    required TResult Function(Calculated value) calculated,
    required TResult Function(Error value) error,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Inputting value)? inputting,
    TResult? Function(Calculated value)? calculated,
    TResult? Function(Error value)? error,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Inputting value)? inputting,
    TResult Function(Calculated value)? calculated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }
}

abstract class Calculated extends CalculatorStatus {
  const factory Calculated({required final double result}) = _$CalculatedImpl;
  const Calculated._() : super._();

  double get result;
  @JsonKey(ignore: true)
  _$$CalculatedImplCopyWith<_$CalculatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CalculatorStatusCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends Error {
  const _$ErrorImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CalculatorStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inputting,
    required TResult Function(double result) calculated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inputting,
    TResult? Function(double result)? calculated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inputting,
    TResult Function(double result)? calculated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Inputting value) inputting,
    required TResult Function(Calculated value) calculated,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Inputting value)? inputting,
    TResult? Function(Calculated value)? calculated,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Inputting value)? inputting,
    TResult Function(Calculated value)? calculated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends CalculatorStatus {
  const factory Error({required final String message}) = _$ErrorImpl;
  const Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
