import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/appConstant.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({required this.visibility,required this.image,required this.onTap,Key? key}) : super(key: key);
  bool visibility;
  String image;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
          clipBehavior: Clip.none,
          children:[
            Container(
              padding: EdgeInsets.all(15),
              height: 56,width: 70,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white
            ),
              child: SvgPicture.asset(image),
            ),
            Positioned(
              right: -8,
              top: -8,
              child: Visibility(
                visible: visibility,
                child: Container(
                  padding: EdgeInsets.all(4),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.scaffoldColor
                  ),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    height: 20,width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.green
                    ),
                    child: SvgPicture.asset(AppIcons.check),
                  ),
                ),
              ),
            ),

          ]
      ),
    )
    ;
  }
}

