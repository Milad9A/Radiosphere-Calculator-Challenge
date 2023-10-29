// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorInput {
  Operation get operation => throw _privateConstructorUsedError;
  List<double> get operands => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorInputCopyWith<CalculatorInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorInputCopyWith<$Res> {
  factory $CalculatorInputCopyWith(
          CalculatorInput value, $Res Function(CalculatorInput) then) =
      _$CalculatorInputCopyWithImpl<$Res, CalculatorInput>;
  @useResult
  $Res call({Operation operation, List<double> operands});
}

/// @nodoc
class _$CalculatorInputCopyWithImpl<$Res, $Val extends CalculatorInput>
    implements $CalculatorInputCopyWith<$Res> {
  _$CalculatorInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
    Object? operands = null,
  }) {
    return _then(_value.copyWith(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as Operation,
      operands: null == operands
          ? _value.operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorInputImplCopyWith<$Res>
    implements $CalculatorInputCopyWith<$Res> {
  factory _$$CalculatorInputImplCopyWith(_$CalculatorInputImpl value,
          $Res Function(_$CalculatorInputImpl) then) =
      __$$CalculatorInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Operation operation, List<double> operands});
}

/// @nodoc
class __$$CalculatorInputImplCopyWithImpl<$Res>
    extends _$CalculatorInputCopyWithImpl<$Res, _$CalculatorInputImpl>
    implements _$$CalculatorInputImplCopyWith<$Res> {
  __$$CalculatorInputImplCopyWithImpl(
      _$CalculatorInputImpl _value, $Res Function(_$CalculatorInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
    Object? operands = null,
  }) {
    return _then(_$CalculatorInputImpl(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as Operation,
      operands: null == operands
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$CalculatorInputImpl extends _CalculatorInput {
  const _$CalculatorInputImpl(
      {required this.operation, required final List<double> operands})
      : _operands = operands,
        super._();

  @override
  final Operation operation;
  final List<double> _operands;
  @override
  List<double> get operands {
    if (_operands is EqualUnmodifiableListView) return _operands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'CalculatorInput(operation: $operation, operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorInputImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, operation, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorInputImplCopyWith<_$CalculatorInputImpl> get copyWith =>
      __$$CalculatorInputImplCopyWithImpl<_$CalculatorInputImpl>(
          this, _$identity);
}

abstract class _CalculatorInput extends CalculatorInput {
  const factory _CalculatorInput(
      {required final Operation operation,
      required final List<double> operands}) = _$CalculatorInputImpl;
  const _CalculatorInput._() : super._();

  @override
  Operation get operation;
  @override
  List<double> get operands;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorInputImplCopyWith<_$CalculatorInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
