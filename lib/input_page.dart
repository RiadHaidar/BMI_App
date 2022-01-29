import 'package:bmicalculatorapp/textShortcut.dart';
import 'package:flutter/material.dart';
import 'mycard.dart';
import 'sex_card.dart';
import 'button_container.dart';
import 'expanded_slider.dart';

const TextStyle selectionStyle = TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.white
        );
const TextStyle kgStyle = TextStyle(
                                    fontFamily: 'Raleway-Black',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  );
const Text appTitle = Text(
    'BMI CALCULATOR',
    style: TextStyle(color: Colors.black),
  );
Color activeCardColor = Color(0xff2BA1BB);
Color inActiveCardColor = Color(0xffD5D6D8);
AppBar appBar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: appTitle,
  centerTitle: true,
);
const cardColor = Color(0xffD5D6D8);
TextStyle styleOfText = TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 20,
  color: Colors.grey[700],
);
const TextStyle numberStyle = TextStyle(
  fontFamily: 'Raleway-Black',
  // fontWeight: FontWeight.bold,
  fontSize: 40.0,
  color: Colors.black,
);

double sliderValue = 60.0;
int age=25;
int weight = 75;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inActiveCardColor;
  int detect = 0;

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
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextShortcut('Height', styleOfText),
                       ExpandedSlider(sliderValue, (double height){
                         setState(() {
                           sliderValue = height.round().toDouble();
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
                              TextShortcut(
                                  ' kg',kgStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                             buttonContainer(Icons.add,(){
                               setState(() {
                                 weight++;
                               });
                             }),
                             buttonContainer(Icons.remove,(){
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
                            ]  
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                             buttonContainer(Icons.add,(){
                               setState(() {
                                 age++;
                               });
                             }),
                             buttonContainer(Icons.remove,(){
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
           
            child: MyCard(width:MediaQuery.of(context).size.width * 0.9, 
                    height: MediaQuery.of(context).size.height * 0.09, color:activeCardColor, 
                    cardChild: Center(
            child: GestureDetector(child: Text('Let\'s Calculate',style: selectionStyle,),
            onTap: (){},),
                    ),)),

    
        ],
      ),
    );
  }
}
