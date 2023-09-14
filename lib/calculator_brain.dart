import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final double height;
  final double weight;

  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getTextAdvice() {
    if (_bmi >= 25) {
      return 'You are overweight. You should exercise more.';
    } else if (_bmi > 18.5) {
      return 'Perfect! You have a normal weight.';
    } else {
      return 'You are underweight. Eat more or you may face health issues.';
    }
  }
}
