import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/appConstant.dart';


class PersonInfoBox extends StatelessWidget {
   PersonInfoBox({required this.image,required this.name,required this.num,required this.color,Key? key}) : super(key: key);
   String image;
   String num;
   String name;
   Color color;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      width: 106,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white),
      child: Column(
        children: [
          const SizedBox(
            height: 7,
          ),
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: color,
            ),
            child: SvgPicture.asset(image),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: TextStyle(
                color: AppColors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            num,
            style:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    )
    ;
  }
}
