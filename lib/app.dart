import 'package:flutter/material.dart';
import 'package:labevo/screen/first_operent.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstOperent(),
      theme: ThemeData(inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),

      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.redAccent
      )),
    );
  }
}
