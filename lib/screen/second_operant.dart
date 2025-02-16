import 'package:flutter/material.dart';
import 'package:labevo/screen/third_page.dart';

class SecondPage extends StatefulWidget {
  final String firstOperand;

  SecondPage({required this.firstOperand});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? _selectedOperator;
  final List<String> _operators = ['+', '-', '*', '/'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30),
            DropdownButtonFormField<String>(
              value: _selectedOperator,
              hint: Text("Select Operator"),
              onChanged: (value) {
                setState(() {
                  _selectedOperator = value;
                });
              },
              items: _operators.map((operator) {
                return DropdownMenuItem(
                  value: operator,
                  child: Text(operator),
                );
              }).toList(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Operator",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_selectedOperator != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        firstOperand: widget.firstOperand,
                        operator: _selectedOperator!,
                      ),
                    ),
                  );
                }
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
