// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../utils/appConstant.dart';



class Item extends StatelessWidget {
   Item({required this.image,required this.text,required this.prise,Key? key}) : super(key: key);
  String image;
  String text;
  String prise;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 154,
      height: 200,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
              height: 133,
              width: 143,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 250, 246, 0.56),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Image(
                image: AssetImage(image),
              )),
          const SizedBox(
            height: 5,
          ),
          Text(text),
          const SizedBox(
            height: 4,
          ),
          Text(
            prise,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    )
    ;
  }
}
