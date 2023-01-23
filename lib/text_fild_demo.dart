
import 'package:flutter/material.dart';

class TextFildDemo extends StatefulWidget {
  const TextFildDemo({Key? key}) : super(key: key);

  @override
  State<TextFildDemo> createState() => _TextFildDemoState();
}

class _TextFildDemoState extends State<TextFildDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController stdController = TextEditingController();
  TextEditingController divController = TextEditingController();
  TextEditingController rollNumController = TextEditingController();
  TextEditingController mobileNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heigth = size.height;
    double width = size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffe2c3f7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width / 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                enabled: true,

                controller: nameController,

                onChanged: (value) {
                  setState(() {
                    debugPrint("value---->. $value");
                  });
                },
                onTap: () {
                  debugPrint("12345.......");
                },
                style: TextStyle(
                  fontSize: text * 20,
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
                  hintStyle: TextStyle(
                    fontSize: text * 15,
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
              SizedBox(
                height: heigth / 80,
              ),
              TextField(
                controller: surNameController,
                style: TextStyle(
                  fontSize: text * 20,
                ),
                // onChanged: (value) {
                //   setState(() {
                //     debugPrint("value---->. $value");
                //   });
                // },
                onTap: () {
                  debugPrint("secod fild.......");
                },
                decoration: InputDecoration(
                  // border: const OutlineInputBorder(),
                  // enabled: false,
                  hintText: "enter surname",
                  labelText: "Enter surname",
                  // counterText: "qwe",
                  labelStyle: const TextStyle(
                    color: Color(0xff1c235e),
                  ),
                  hintStyle: TextStyle(
                    fontSize: text * 15,
                  ),
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
              SizedBox(
                height: heigth / 80,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: stdController,
                      onChanged: (value) {
                        setState(() {
                          debugPrint("aaaaaa-------->$value");
                        });
                      },
                      decoration: InputDecoration(
                        // border: const OutlineInputBorder(),
                        // enabled: false,
                        labelText: "Std",
                        hintText: "enter std",
                        // counterText: "qwe",
                        labelStyle: const TextStyle(
                          color: Color(0xff1c235e),
                        ),
                        hintStyle: TextStyle(
                          fontSize: text * 15,
                        ),
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
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: divController,
                      onChanged: (value) {
                        setState(() {
                          debugPrint("aaaaaa-------->$value");
                        });
                      },
                      decoration: InputDecoration(
                        // border: const OutlineInputBorder(),
                        // enabled: false,
                        labelText: "enter div",
                        hintText: "Div",
                        // counterText: "qwe",
                        labelStyle: const TextStyle(
                          color: Color(0xff1c235e),
                        ),
                        hintStyle: TextStyle(
                          fontSize: text * 15,
                        ),
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
                  ),
                ],
              ),
              SizedBox(
                height: heigth / 80,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 5,
                    child: TextField(
                      controller: rollNumController,
                      onChanged: (value) {
                        setState(() {
                          debugPrint("aaaaaa-------->$value");
                        });
                      },
                      decoration: InputDecoration(
                        // border: const OutlineInputBorder(),
                        // enabled: false,
                        labelText: "RollNumber",
                        hintText: "enter roll number",
                        // counterText: "qwe",
                        labelStyle: const TextStyle(
                          color: Color(0xff1c235e),
                        ),
                        hintStyle: TextStyle(
                          fontSize: text * 15,
                        ),
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
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: mobileNumController,
                      onChanged: (value) {
                        setState(() {
                          debugPrint("aaaaaa-------->$value");
                        });
                      },
                      decoration: InputDecoration(
                        // border: const OutlineInputBorder(),
                        // enabled: false,
                        labelText: "enter mobile number",
                        hintText: "Mobile Number",
                        // counterText: "qwe",
                        labelStyle: const TextStyle(
                          color: Color(0xff1c235e),
                        ),
                        hintStyle: TextStyle(
                          fontSize: text * 15,
                        ),
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
                  ),
                ],
              ),
              SizedBox(
                height: heigth / 180,
              ),
              Text(
                nameController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              ),
              Text(
                surNameController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              ),
              Text(
                stdController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              ),
              Text(
                divController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              ),
              Text(
                rollNumController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              ),
              Text(
                mobileNumController.text,
                style: TextStyle(
                  fontSize: text * 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
