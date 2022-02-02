import 'package:bmicalculatorapp/calculator_brain.dart';
import 'result.dart';
import '../components/textShortcut.dart';
import 'package:flutter/material.dart';
import '../components/mycard.dart';
import '../components/sex_card.dart';
import '../components/button_container.dart';
import '../components/expanded_slider.dart';
import 'package:bmicalculatorapp/constants.dart';
import 'dart:math';
 double bmi = weight / pow(sliderValue / 100, 2);
// double height = 60 ;
int age = 25;
double weight = 75;
double sliderValue = 60;
CalculatorBrain calculatorBrain = new CalculatorBrain(weight, sliderValue, bmi);

String finalResult = calculatorBrain.getResult();
// double squareOfHeight= sliderValue * sliderValue;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  void calculateResult(){
   // Navigator.pushNamed(context, ResultPage.resultPageRoute);
   setState(() {
       bmi = weight / pow(sliderValue / 100, 2);
    print(bmi);
   });
  //  double x = double.parse( calculatorBrain.calculateBMI());
  
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultPage()));
  }
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: MyCard(
                  width: 0.4,
                  height: 0.08,
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: SexCard('Male', Icons.male_sharp),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: MyCard(
                  width: 0.4,
                  height: 0.08,
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: SexCard('Female', Icons.female_sharp),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[
                    MyCard(
                      width: 0.4,
                      height: 0.6,
                      color: cardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextShortcut('Height', styleOfText),
                          ExpandedSlider(sliderValue, (double height) {
                            setState(() {
                             sliderValue= height.round().toDouble();
                            });
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: TextShortcut(
                                sliderValue.toString(), styleOfText),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyCard(
                      width: 0.4,
                      height: 0.6 / 2.2,
                      color: cardColor,
                      cardChild: Column(
                        children: <Widget>[
                          TextShortcut('Weight', styleOfText),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextShortcut(weight.toString(), numberStyle),
                              TextShortcut(' kg', kgStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              buttonContainer(Icons.add, () {
                                setState(() {
                                  //print(weight);
                                  weight++;

                                });
                              }),
                              buttonContainer(Icons.remove, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    MyCard(
                      width: 0.4,
                      height: 0.6 / 2.2,
                      color: cardColor,
                      cardChild: Column(
                        children: <Widget>[
                          TextShortcut('Age', styleOfText),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextShortcut(age.toString(), numberStyle),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              buttonContainer(Icons.add, () {
                                setState(() {
                                  age++;
                                });
                              }),
                              buttonContainer(Icons.remove, () {
                                setState(() {
                                  age--;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: MyCard(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.09,
            color: activeCardColor,
            cardChild: Center(
              child: GestureDetector(
                child: Text(
                  'Let\'s Calculate',
                  style: selectionStyle,
                ),
                onTap:calculateResult,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
