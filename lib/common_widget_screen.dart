import 'package:flutter/material.dart';
import 'package:text_fild_ui/common_widget/comman_container.dart';
import 'package:text_fild_ui/common_widget/common_button_sir.dart';

class CommonWidgetScreen extends StatefulWidget {
  const CommonWidgetScreen({Key? key}) : super(key: key);

  @override
  State<CommonWidgetScreen> createState() => _CommonWidgetScreenState();
}

class _CommonWidgetScreenState extends State<CommonWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          CommonButton(
            height: height / 15,
            isShadowFull: false,
            title: "Connexion",
          ),
          const SizedBox(
            height: 20,
          ),
          CommonButton(
            height: height / 15,
            title: "janki",
            textColor: Colors.yellow,
            buttonColor: Colors.pink,
          ),
          const SizedBox(
            height: 20,
          ),
          CommonButton(
            height: height / 20,
            buttonHeight: height / 20,
            isShadowFull: false,
            roundShap: false,
            icon: const Icon(Icons.add),
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CommonButton(
            height: height / 15,
            isShadowFull: false,
            title: "janki",
            textColor: Colors.yellow,
            buttonColor: Colors.pink,
          ),
          Container(
            color: Colors.yellow,
            height: height / 3,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CommanContainer(
                  width: width / 1.4,
                  circleColor: index == 1 || index == 3 ? true : false,
                  // isFavrite: index == 1 ? Icon(Icons.add) : SizedBox(),
                  onTap: () {
                    setState(() {});
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: height / 5,
            width: width / 5,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
