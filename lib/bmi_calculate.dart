
import 'dart:math';

class BMICalculate{

  double height;
  double weight;

  BMICalculate({required this.height, required this.weight});

  double getBMI(){
    double bmi = weight / pow(height/100, 2);
    return bmi;
  }

  


}

