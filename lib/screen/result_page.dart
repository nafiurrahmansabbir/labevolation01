

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String firstOperand;
  final String operator;
  final String secondOperand;

  ResultPage(
      {required this.firstOperand, required this.operator, required this.secondOperand});

  double _calculateResult() {
    double num1 = double.parse(firstOperand);
    double num2 = double.parse(secondOperand);
    double result = 0;

    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          result = double.infinity; // Handle division by zero
        }
        break;
      default:
        result = 0;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Result")),
        body: Center(
            child: Text(
              "Result: ${_calculateResult()}",
              style: TextStyle(fontSize: 24),
            ),
            ),
        );
    }
}