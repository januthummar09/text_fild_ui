import 'package:flutter/material.dart';

class DoCheck extends StatefulWidget {
  const DoCheck({Key? key}) : super(key: key);

  @override
  State<DoCheck> createState() => _DoCheckState();
}

class _DoCheckState extends State<DoCheck> {
  bool isAdd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: isAdd ? Colors.green : Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(isAdd ? "Hide data" : "unhide data"),
                  isAdd ? const Icon(Icons.add) : const SizedBox(),
                ],
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isAdd = !isAdd;
                  });
                },
                child: Text(isAdd ? "hide" : "unhide"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
