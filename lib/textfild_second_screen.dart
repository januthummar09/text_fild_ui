import 'package:flutter/material.dart';

class TextfildSecondScreen extends StatefulWidget {
  final String? userDate;
  final String? userTime;
  const TextfildSecondScreen({Key? key, this.userDate, this.userTime})
      : super(key: key);

  @override
  State<TextfildSecondScreen> createState() => _TextfildSecondScreenState();
}

class _TextfildSecondScreenState extends State<TextfildSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "selected dateee: ${widget.userDate.toString()} \n\n\nselected time  :  ${widget.userTime.toString()}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
           
          ],
        ),
      ),
    );
  }
}
