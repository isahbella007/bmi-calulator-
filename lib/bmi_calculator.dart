import 'dart:math';

class Calculator {
  double bmi = 0;

  String getbmi(int height, int weight) {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getBmiCategory() {
    if (bmi < 16) {
      return "Severe Thinness";
    } else if (bmi >= 16 && bmi <= 17) {
      return "Moderate Thinness";
    } else if (bmi >= 17 && bmi <= 18.5) {
      return "Mild Thinness";
    } else if (bmi >= 18.5 && bmi <= 25) {
      return "Normal";
    }else if (bmi >= 25 && bmi <= 30){ 
      return "Overweight"; 
    }else{ 
      return "Obese";
    }
  }

  String getDisplayMessage(){ 
     if (bmi > 30) {
      return 'You have a severely high body weight. Change your nourishment drastically!';
    }
    if (bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    }
    if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    }
    return 'You have a lower than normal body weight. You can eat a bit more!';
  }
}

