import 'dart:math';

class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});
  final height;
  final weight;
  double bmi = 0;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (bmi >= 25) {
      return 'You have a higher weight you should do exerices';
    } else if (bmi > 18.5) {
      return 'You have a normal body, save it';
    } else {
      return 'You have a underweight body you should eat more but healthy food';
    }
  }
}