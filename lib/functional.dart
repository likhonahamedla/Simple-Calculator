import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class FunctionalData extends ChangeNotifier {
  String userInput = '';
  String result = '0';

  void buttonData(String value) {
    if (value == 'C') {
      userInput = '';
      result = '0';
    } else if (value == 'Del') {
      if (userInput.isNotEmpty) {
        userInput = userInput.substring(0, userInput.length - 1);
      }
    } else if (value == '=') {
      calculateResult();
    } else if (value == 'AVG') {
      calculateAVG();
    } else {
      userInput += value;
      calculateResult();
    }
    notifyListeners();
  }

  void calculateResult() {
    try {
      String expression = userInput
          .replaceAll('✖️', '*')
          .replaceAll('➗', '/')
          .replaceAll('➖', '-')
          .replaceAll('➕', '+');
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      if (eval % 1 == 0) {
        result = eval.toInt().toString();
      } else {
        result = eval.toStringAsFixed(7);
      }
    } catch (e) {
      result = '0';
    }
    notifyListeners();
  }

  void calculateAVG() {
    try {
      final num = RegExp(
        r'\d+(\.\d+)?',
      ).allMatches(userInput).map((m) => (double.parse(m.group(0)!))).toList();
      if (num.isNotEmpty) {
        double sum = num.reduce((a, b) => a + b);
        double avg = sum / num.length;
        if (avg % 1 == 0) {
          result = avg.toInt().toString();
        } else {
          result = avg.toStringAsFixed(7);
        }
      } else {
        result = '0';
      }
    } catch (e) {
      result = 'Error';
    }
    notifyListeners();
  }
}
