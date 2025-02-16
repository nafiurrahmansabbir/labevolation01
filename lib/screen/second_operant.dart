import 'package:flutter/material.dart';
import 'package:labevo/screen/third_page.dart';

class SecondPage extends StatefulWidget {
  final String firstOperand;

  SecondPage({required this.firstOperand});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _controller = TextEditingController();

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
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Enter Operator",hintText: '(+, -, *, /)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String operator = _controller.text;
                if (operator.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        firstOperand: widget.firstOperand,
                        operator: operator,
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
