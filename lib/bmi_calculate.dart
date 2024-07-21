
import 'dart:math';

class BMICalculate{

  double _height;
  double _weight;

  double _bmi = 0;

  BMICalculate(this._height, this._weight);

  double getBMI(){
    double calculate = _weight / pow(_height/100, 2);
    _bmi = calculate;
    return calculate;
  }

  String getResult(){
    String result = "";
    if(_bmi < 18){
      result = "Bajo peso";
    }else if(_bmi <= 25){
      result = "Normal";
    }else{
      result = "Sobre peso";
    }
    return result;
  }


  String getComment(){
    String comment = "";
    if(_bmi < 18){
      comment = "Debes de comer un poco más y realizar ejercicios";
    }else if(_bmi <= 25){
      comment = "Estás bien, continúa comiendo sano y realizando ejercicios";
    }else{
      comment = "Debes de comer más sano y realizar mucho más ejercicio";
    }
    return comment;
  }

  int getImage(){
    int image = 1;
    if(_bmi < 18){
      image = 1;
    }else if(_bmi <= 25){
      image = 2;
    }else{
      image = 3;
    }
    return image;
  }




}

