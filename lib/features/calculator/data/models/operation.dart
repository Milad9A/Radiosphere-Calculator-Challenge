enum Operation {
  addition(
    name: 'Addition',
    sign: '+',
    operandsCount: 2,
  ),
  subtraction(
    name: 'Subtraction',
    sign: '-',
    operandsCount: 2,
  ),
  multiplication(
    name: 'Multiplication',
    sign: 'x',
    operandsCount: 2,
  ),
  division(
    name: 'Division',
    sign: '÷',
    operandsCount: 2,
  ),
  squareRoot(
    name: 'Square Root',
    sign: '√',
    operandsCount: 1,
  );

  final String name;
  final String sign;
  final int operandsCount;

  const Operation({
    required this.name,
    required this.sign,
    required this.operandsCount,
  });

  String get title => '$name $sign';
}
