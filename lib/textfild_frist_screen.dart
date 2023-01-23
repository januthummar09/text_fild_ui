import 'package:flutter/material.dart';
import 'package:text_fild_ui/textfild_second_screen.dart';

class TextfildFristScreen extends StatefulWidget {
  const TextfildFristScreen({Key? key}) : super(key: key);

  @override
  State<TextfildFristScreen> createState() => _TextfildFristScreenState();
}

class _TextfildFristScreenState extends State<TextfildFristScreen> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  
  // DateTime date = DateTime.now();
  // TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: dateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter date",
              ),
              onTap: () async {
                DateTime? datePicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025),
                );
                if (datePicker != null) {
                  setState(() {
                    dateController.text = datePicker.toString();
                  });
                  //   debugPrint(
                  //       "date selected :${datePicker.day}:${datePicker.month}:${datePicker.year}");
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: timeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter time",
              ),
              onTap: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if (pickedTime != null) {
                  setState(() {
                    timeController.text = pickedTime.toString();
                  });
                  debugPrint(
                      "time selected :${pickedTime.hour}:${pickedTime.minute}");
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextfildSecondScreen(
                      userDate: dateController.text,
                      userTime: timeController.text,
                    ),
                  ),
                );
                
              },
              child: const Text("Submit"))
        ],
      ),
    );
  }
}

