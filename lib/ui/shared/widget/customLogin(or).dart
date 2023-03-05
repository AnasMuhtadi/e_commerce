// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CirclerButton extends StatelessWidget {
   CirclerButton({required this.image ,this.mytop= 0,this.mybottom =0,this.myleft =0, Key? key}) : super(key: key);
  String image;
  double mytop ;
  double mybottom;
  double myleft;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: mytop,bottom: mybottom,left: myleft),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
                offset: Offset(3, 2),
                color: Colors.grey,
                blurRadius: 5)
          ]),
      child:Image(image: AssetImage(image),),
    )
    ;
  }
}
