import 'package:flutter/material.dart';
import 'package:untitled/utils/appConstant.dart';


class ColorProduct extends StatelessWidget {
   ColorProduct({required this.color,required this.onTap,required this.padding,required this.border,Key? key}) : super(key: key);
   Color color;
   Function() onTap;
   BoxBorder border;
   EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: EdgeInsets.only(right: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: border,
        ),

        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color),
        ),
      ),
    )
    ;
  }
}
