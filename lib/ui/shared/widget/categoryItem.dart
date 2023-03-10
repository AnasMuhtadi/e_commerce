import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../routing/navigation.dart';
import '../../../routing/router.dart';
import '../../../utils/app_constant.dart';


class CategoryItem extends StatelessWidget {

   CategoryItem({required this.text,required this.image,Key? key}) : super(key: key);
   String image;
   String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 75,
      width: 71,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.grey)),
      child: Column(children: [SvgPicture.asset(image),Text(text)],)
    )
    ;
  }
}
