import 'package:bmicalculatorapp/textShortcut.dart';
import 'package:flutter/material.dart';
import 'mycard.dart';
import 'sex_card.dart';

Color activeCardColor = Color(0xff2BA1BB);
Color inActiveCardColor = Color(0xffD5D6D8);
  AppBar appBar = AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      );
const cardColor = Color(0xffD5D6D8);
 TextStyle styleOfText =  TextStyle(fontFamily: 'Raleway-Black',
 fontSize: 20,
 color: Colors.grey[700],);
double sliderValue = 60.0;

enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inActiveCardColor;
  int detect = 0;

   Gender ? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:cardColor ,
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
                    color: selectedGender == Gender.male ? activeCardColor : inActiveCardColor,
                    cardChild: SexCard('Male', Icons.male_sharp),),
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
                  color: selectedGender == Gender.female ? activeCardColor : inActiveCardColor,
                  cardChild: SexCard('Female', Icons.female_sharp),
                ),
              ),
            ],
          ),
          Container(
            //  margin: EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[
                  //  Text('data'),
                    MyCard(
                      width: 0.4,
                      height: 0.6,
                      color: cardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                       // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextShortcut('Height',styleOfText),
                          Expanded(
                            child: Stack(
                              children:[ RotatedBox(
                                quarterTurns: 3,
                                child: Slider(
                                  label: sliderValue.toString(),
                                  min: 60.0,
                                  max: 225.0,
                                  inactiveColor: Color(0xffC7C8CA),
                                  activeColor: Color(0xff2BA1BB),
                                  value: sliderValue,
                                  onChanged: (height) {
                                    setState(() {
                                      sliderValue = height.round().toDouble();
                                    });
                                  },
                                ),
                              ),],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: TextShortcut(sliderValue.toString(),styleOfText),
                          ),
                        ],
                      ),
                    ),
                 
                  ],
                ),
               
                Column(
              
                  children: [
                    MyCard(width: 0.4, height: 0.6/2.2, color: cardColor),
                    
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                     MyCard(width: 0.4, height: 0.6/2.2, color: cardColor),
                  ],
                ),
              ],
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            //    Expanded(child: MyCard(width: 0.9, height: 0.06, color: cardColor)),
                Container(
                
                  decoration: BoxDecoration(
                    color: Color(0xff1D1E33),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ],
            ),
          ),
       
       
        ],
      ),
    );
  }
}
