import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'result_page.dart';

class ThirdPage extends StatefulWidget {
  final String firstOperand;
  final String operator;
  ThirdPage({required this.firstOperand, required this.operator});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Operand")),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30,),
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Enter Second Operand"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String secondOperand = _controller.text;
              if (secondOperand.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      firstOperand: widget.firstOperand,
                      operator: widget.operator,
                      secondOperand: secondOperand,
                    ),
                  ),
                );
              }
            },
            child: Text("Next"),
          ),
        ],
      ),
    );
  }
}