
import 'package:flutter/material.dart';
import 'package:text_fild_ui/common_widget/common_icon.dart';

class ValidationPractic extends StatefulWidget {
  const ValidationPractic({Key? key}) : super(key: key);

  @override
  State<ValidationPractic> createState() => _ValidationPracticState();
}

class _ValidationPracticState extends State<ValidationPractic> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  enabled: true,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " text";
                    } else if (value.length <= 5) {
                      return "enter 5 char";
                    } else {
                      return null;
                    }
                  },

                  onChanged: (value) {
                    setState(() {
                      debugPrint("value---->. $value");
                    });
                  },
                  onTap: () {
                    debugPrint("12345.......");
                  },
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  // autocorrect: false,
                  // autofocus: false,
                  // selectionHeightStyle: BoxHeightStyle.tight,
                  // selectionWidthStyle: BoxWidthStyle.max,
                  decoration: InputDecoration(
                    hintText: "enter name",
                    labelText: "Enter Name",
                    labelStyle: const TextStyle(
                      color: Color(0xff1c235e),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    // helperText: "abc",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff1c235e),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff858185),
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff21c437),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  enabled: true,

                  controller: emailController,

                  onChanged: (value) {
                    setState(() {
                      debugPrint("value---->. $value");
                    });
                  },
                  onTap: () {
                    debugPrint("12345.......");
                  },
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  autocorrect: false,
                  autofocus: false,
               
                  decoration: InputDecoration(
                    hintText: "enter name",
                    labelText: "Enter Name",
                    labelStyle: const TextStyle(
                      color: Color(0xff1c235e),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    // helperText: "abc",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff1c235e),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff858185),
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff21c437),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  child: const Text("Submit"),
                ),
                const CommonIcon(
                  height: 200,
                  iconColor: Colors.green,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CommonIcon(
                  height: 100,
                  isStack: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
