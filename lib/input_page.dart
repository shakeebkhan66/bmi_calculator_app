import 'dart:ffi';

import 'package:bmi_calculator_app/constantFile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';

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
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
