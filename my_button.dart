import 'package:flutter/material.dart';
import 'package:pub_dev/constant.dart';
class Button extends StatelessWidget {
final String title;
final Color color;
final VoidCallback onPress;
  const Button({super.key,required this.title, this .color= const Color(0xffa5a5a5),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  color
          ),
          child: Center(child: Text( title,style: headingTextStyle)),
        ),
      ),
    );
  }
}