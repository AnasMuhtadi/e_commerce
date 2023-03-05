import 'package:flutter/material.dart';

import '../../../routing/navigation.dart';
import '../../../routing/router.dart';
import '../../../utils/appConstant.dart';



class SeeAll extends StatelessWidget {
   SeeAll({required this.textLift,required this.textRite,required this.onTap,Key? key}) : super(key: key);
  String textLift;
  String textRite;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textLift,
          style: TextStyle(
              color: AppColors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        TextButton(
            onPressed: onTap,
            child: Text(
              textRite,
              style: TextStyle(color: AppColors.grey),
            ))
      ],
    )
    ;
  }
}
