import 'package:flutter/material.dart';
import 'package:text_fild_ui/text_fild_demo.dart';
import 'package:text_fild_ui/textfild_frist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextfildFristScreen(),
      // home: const TextFildDemo(),
      // home: const TextfildFrom(),
      // home: const Validation(),
      // home: const ValidationPractic(),
      // home: const DateTimePickerScreen(),
      // home: const TextFildDemo(),
      // home: const CommonWidgetScreen(),
    );
  }
}
