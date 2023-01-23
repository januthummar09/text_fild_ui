import 'package:flutter/material.dart';

class CommanContainer extends StatelessWidget {
  // final double? height;
  final double? width;
  final bool? circleColor;
  final Widget? isFavrite;
  final GestureTapCallback? onTap;
  final bool?isDo;
  
  const CommanContainer({
    Key? key,
    // this.height,
    this.width,
    this.circleColor = true,
    this.isFavrite, this.isDo, this.onTap,
  }) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(width! / 10),
      child: Container(
        width: width,

        // color:Color(0xffFFFFFF) ,
        color: Colors.green,
        child: Stack(alignment: Alignment.topRight, children: [
          Container(
            color: Colors.grey,
            margin:
                EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 7),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: ClipOval(
              child: GestureDetector(
                // onTap:onTap( bool isDo),
                
                child: Container(
                  width: MediaQuery.of(context).size.height / 10,
                  height: MediaQuery.of(context).size.height / 10,
                  color: circleColor! ? Colors.orange : Colors.pink,
                  child: isFavrite ?? const Icon(Icons.favorite),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
