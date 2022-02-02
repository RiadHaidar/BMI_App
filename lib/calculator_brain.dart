import 'dart:math';

class CalculatorBrain {


final double weight;
final double height; 
double _bmi;
CalculatorBrain(this.weight,this.height,this._bmi);



  String calculateBMI() {
    
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toString();
  }

  String getResult() {
    if (_bmi < 16 ) {
      return 'Severely Underweight';
    } else if (_bmi >= 16 && _bmi <= 18.4) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi<= 24.9) {
      return 'Normal';
  } else if(_bmi >= 25 && _bmi <= 29.9){
    return 'Overweight';
  } else if(_bmi >= 30 && _bmi <= 34.9){
    return 'Obesity Class 1';
  } else if(_bmi >= 35 && _bmi <= 39.9){
    return 'Obesity Class 2';
  } else {
    return 'Obesity Class 3';
  }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }



}


/*


  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int ?weight;

  double? _bmi;

  String calculateBMI() {
    
    _bmi = (weight / pow(height / 100, 2));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  */