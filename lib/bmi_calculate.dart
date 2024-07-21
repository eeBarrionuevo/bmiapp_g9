
import 'dart:math';

class BMICalculate{

  double height;
  double weight;

  BMICalculate({required this.height, required this.weight});

  double getBMI(){
    double bmi = weight / pow(height/100, 2);
    return bmi;
  }

  String getResult(){
    double bmi = getBMI();
    String result = "";
    if(bmi < 18){
      result = "Bajo peso";
    }else if(bmi <= 25){
      result = "Normal";
    }else{
      result = "Sobre peso";
    }
    return result;
  }


}

