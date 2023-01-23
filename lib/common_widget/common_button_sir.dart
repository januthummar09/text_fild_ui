import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final bool? isShadowFull;
  final String? title;
  final Color? buttonColor;
  final Color? shadowColor;
  final Color? textColor;
  final double? buttonHeight;
  final bool roundShap;
  final Icon? icon;
  final GestureTapCallback? onTap;
  const CommonButton({
    Key? key,
    this.height,
    this.isShadowFull = false,
    this.title = "",
    this.buttonColor,
    this.shadowColor,
    this.icon,
    this.textColor,
    this.onTap,
    this.buttonHeight,
    this.roundShap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: height! / 1.4,
          width: isShadowFull!
              ? double.infinity
              : MediaQuery.of(context).size.width - 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: roundShap
                ? BorderRadius.circular(25)
                : BorderRadius.circular(width / 2.5),
            boxShadow: [
              BoxShadow(
                color: shadowColor ?? const Color(0x80F24F04),
                blurRadius: 18,
                spreadRadius: 6,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: height,
            width: buttonHeight ?? double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: buttonColor ?? const Color(0xFFFF4800),
              borderRadius: roundShap
                  ? BorderRadius.circular(width / 2.5)
                  : BorderRadius.circular(25),
            ),
            child: icon ??
                Text(
                  title!,
                  style: TextStyle(
                    color: textColor ?? const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
