import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;
  String CalculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to Excercise';
    } else if (bmi >= 18.5) {
      return 'You have a Normal Body weight. Good Job!';
    } else {
      return 'Your weight is too low, please eat something to keep yourself healthy';
    }
  }
}
