import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight,});

  String calculateBMI() {
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

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'According the the body Body Mass Index Calculations: You have a higher than normal body weight BMI.';
    } else if (_bmi > 18.5) {
      return 'According the the body Body Mass Index Calculations: You have a normal body weight BMI.';
    } else {
      return 'According the the body Body Mass Index Calculations: You have a lower than normal body weight BMI.';
    }
  }
}
