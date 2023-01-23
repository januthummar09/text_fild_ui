import 'package:flutter/material.dart';

class TextFildScreen extends StatefulWidget {
  const TextFildScreen({Key? key}) : super(key: key);

  @override
  State<TextFildScreen> createState() => _TextFildScreenState();
}

class _TextFildScreenState extends State<TextFildScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  FocusNode firstinput = FocusNode();
  FocusNode secondinput = FocusNode();
  // String inputValue = "janki";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe3fce9),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              onChanged: (value) {
                // value = inputValue;
                debugPrint("first Textfild-------------->>>> $value");
                setState(() {});
              },
              toolbarOptions: const ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
                paste: false,
              ),
              decoration: const InputDecoration(border: InputBorder.none),
              autocorrect: false,
              autofocus: false,
              cursorColor: Colors.pink,
              enabled: true,
              cursorRadius: const Radius.circular(60),
              cursorWidth: 5,
              // minLines: 1,
              // maxLines: 2,
              // expands: false,
              // maxLength: 10,
              showCursor: true,
              textInputAction: TextInputAction.route,
              keyboardAppearance: Brightness.dark,
              keyboardType: TextInputType.multiline,
              // obscureText: true,
              // obscuringCharacter: "~",
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: surnameController,
              onChanged: (value) {
                debugPrint("seond Textfild-------------->>>> $value");
                setState(() {});
              },
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     FocusScope.of(context).requestFocus(secondinput);
            //   },
            //   child: Text("TextFild"),
            // ),
            Text(
              nameController.text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              surnameController.text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
