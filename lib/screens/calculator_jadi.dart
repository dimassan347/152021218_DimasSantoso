import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';




class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = '';
  String result = '';

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equation = '';
        result = '';
      } else if (buttonText == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(equation);
          ContextModel cm = ContextModel();
          double eval = exp.evaluate(EvaluationType.REAL, cm);
          result = eval.toString();
        } catch (e) {
          result = 'Error';
        }
      } else {
        equation += buttonText;
      }
    });
  }

  Widget buildButton(
      {required String buttonText,
      required Color buttonColor,
      required Color textColor}) {
    return Container(
      height: 100,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          buttonPressed(buttonText);
        },
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24,
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7165D6),
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            child: Text(
              equation,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            child: Text(
              result,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                buildButton(
                  buttonText: '7',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '8',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '9',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '/',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '4',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '5',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '6',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '*',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '1',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '2',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '3',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '-',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '0',
                  buttonColor: Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '.',
                  buttonColor:Color(0xFF7165D6),
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '=',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                ),
                buildButton(
                  buttonText: '+',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}