import 'package:flutter/material.dart';

class TextfildFrom extends StatefulWidget {
  const TextfildFrom({Key? key}) : super(key: key);

  @override
  State<TextfildFrom> createState() => TextfildFromState();
}

class TextfildFromState extends State<TextfildFrom> {
  TextEditingController nameController = TextEditingController();
  bool validate = false;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'Error Showed if Field is Empty on Submit button Pressed'),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nameController.text.isEmpty
                      ? validate = true
                      : validate = false;
                  
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
