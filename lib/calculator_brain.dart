import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _imc = 0;

  String calculateIMC(){
    _imc = weight / pow(height/100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult(){
    if(_imc >= 25){
      return 'Overweight';
    }
    else if(_imc > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_imc >= 25){
      return 'You have a higher than normal body weight. Try exercise more.';
    }
    else if(_imc > 18.5){
      return 'You have a normal body weight. Good job!';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }

}