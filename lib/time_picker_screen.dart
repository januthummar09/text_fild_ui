import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({Key? key}) : super(key: key);

  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
                "selected date  : ${date.day}:${date.month}:${date.year} --------${time.hour}:${time.minute}"),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2025),
                  );
                  if (datePicker != null) {
                    setState(() {
                      date = datePicker;
                    });
                    debugPrint(
                        "date selected :${datePicker.day}:${datePicker.month}:${datePicker.year}");
                  }
                },
                child: const Text("date")),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: time,
                    initialEntryMode: TimePickerEntryMode.input);
                if (pickedTime != null) {
                  setState(() {
                    time = pickedTime;
                  });
                  debugPrint(
                      "time selected :${pickedTime.hour}:${pickedTime.minute}");
                }
              },
              child: const Text("Time"),
            ),
          ],
        ),
      ),
    );
  }
}
