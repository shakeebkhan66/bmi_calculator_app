import 'package:bmi_calculator_app/constantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';
import 'ResultFile.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;
  // Color maleColor = deActiveColor;
  // Color feMaleColor = deActiveColor;
  // void updateColor(Gender gendertype) {
  //   if (gendertype == Gender.male) {
  //     maleColor = activeColor;
  //     feMaleColor = deActiveColor;
  //   }
  //   if (gendertype == Gender.female) {
  //     feMaleColor = activeColor;
  //     maleColor = deActiveColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colors: selectGender == Gender.male
                        ? activeColor
                        : deActiveColor,
                    CardWidget: RepeatTextandIcon(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    colors: selectGender == Gender.female
                        ? activeColor
                        : deActiveColor,
                    CardWidget: RepeatTextandIcon(
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              CardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Height', style: skLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        sliderHeight.toString(),
                        style: laText,
                      ),
                      Text(
                        'cm',
                        style: skLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    CardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: skLabelStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          style: laText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderWeight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcon(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderWeight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: new RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    CardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: skLabelStyle,
                        ),
                        Text(
                          sliderAge.toString(),
                          style: laText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  sliderAge--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIcon(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  sliderAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ToDo use GestureDetector and Navigator Widget to go on another Screen
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style: sButton,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}

// ToDo Create separte class for Round Icon Button using in BMI Calculator
class RoundIcon extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  RoundIcon({@required this.iconData, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 7.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
