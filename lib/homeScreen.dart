import 'package:calculator/button.dart';
import 'package:calculator/functional.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final function = Provider.of<FunctionalData>(context);
    return Scaffold(
      backgroundColor: Color(0xFFE5F1FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.black,
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 10,
                children: [
                  Text(
                    function.userInput.isEmpty ? '0' : function.userInput,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    function.result,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 7, right: 7, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Color(0xFFA0D7FF),
            ),
            child: Column(
              spacing: 25,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      onClick: () {
                        function.buttonData('C');
                      },
                      text: 'C',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('AVG');
                      },
                      text: 'AVG',
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                    ),
                    button(
                      onClick: () {
                        function.buttonData('Del');
                      },
                      text: 'Del',
                      fontSize: 32,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                    ),
                    button(
                      onClick: () {
                        function.buttonData('/');
                      },
                      text: '➗',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      onClick: () {
                        function.buttonData('7');
                      },
                      text: '7',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('8');
                      },
                      text: '8',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('9');
                      },
                      text: '9',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('*');
                      },
                      text: '✖️',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      onClick: () {
                        function.buttonData('4');
                      },
                      text: '4',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('5');
                      },
                      text: '5',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('6');
                      },
                      text: '6',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('-');
                      },
                      text: '➖',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      onClick: () {
                        function.buttonData('1');
                      },
                      text: '1',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('2');
                      },
                      text: '2',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('3');
                      },
                      text: '3',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('+');
                      },
                      text: '➕',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      onClick: () {
                        function.buttonData('0');
                      },
                      text: '0',
                    ),
                    button(
                      onClick: () {
                        function.buttonData('00');
                      },
                      text: '00',
                      fontSize: 32,
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                    ),
                    button(
                      onClick: () {
                        function.buttonData('.');
                      },
                      text: '.',
                      fontSize: 35,
                    ),
                    button(
                      onClick: () {
                        function.buttonData('=');
                      },
                      text: '🟰',
                      fontSize: 32,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
