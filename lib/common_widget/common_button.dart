import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  // final double? width;
  final double? height;
  final bool? isWidth;
  final String? title;
  final Color? buttonColor;
  final Color? shadowColor;
  final Color? textColor;
  final Icon? icon;
  final GestureTapCallback? onTap;
  const CommonButton({
    Key? key,
    this.height,
    this.isWidth = false,
    this.title = "",
    this.buttonColor,
    this.shadowColor,
    this.textColor,
    this.icon,
    this.onTap,
    required bool isShadowFull,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: height,
          width: isWidth!
              ? double.infinity
              : MediaQuery.of(context).size.width - 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                // color: shadowColor ?? const Color(0x80F24F04),
                blurRadius: 18,
                spreadRadius: 6,
              ),
            ],
          ),
          child: Text(title!),
        ),
        Container(
          height: height,
          width: double.infinity,
          color: buttonColor,
          margin: const EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          child: Text(title!),
        ),
      ],
    );
  }
}
