import 'package:flutter/material.dart';
import 'package:labevo/screen/second_operant.dart';

class FirstOperent extends StatefulWidget {
  @override
  _FirstOperentState createState() => _FirstOperentState();
}

class _FirstOperentState extends State<FirstOperent> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Operand"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30,),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Operand",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String firstOperand = _controller.text;
                if (firstOperand.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SecondPage(firstOperand: firstOperand),
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
