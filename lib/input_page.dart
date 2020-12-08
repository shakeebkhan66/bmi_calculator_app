import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

const activeColor = Colors.green;
const deActiveColor = Colors.blueAccent;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color feMaleColor = deActiveColor;
  void updateColor(int gender) {
    if (gender == 1) {
      maleColor = activeColor;
      feMaleColor = deActiveColor;
    }
    if (gender == 2) {
      feMaleColor = activeColor;
      maleColor = deActiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('click');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: maleColor,
                      CardWidget: RepeatTextandIcon(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('yes');
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: feMaleColor,
                      CardWidget: RepeatTextandIcon(
                        iconData: FontAwesomeIcons.female,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new RepeatContainerCode(
              colors: Color(0xFF1D1E33),
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
