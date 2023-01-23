import 'package:flutter/material.dart';

class CommonIcon extends StatelessWidget {
  final double? height;
  final Color? iconColor;
  final bool? isStack;
  const CommonIcon(
      {Key? key, this.height, this.iconColor, this.isStack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 300,
      color: iconColor ?? Colors.red,
      child: isStack!
          ? Stack(children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ])
          : const Icon(Icons.favorite),
    );
  }
}
