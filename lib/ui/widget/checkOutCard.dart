import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constant.dart';


// ignore: must_be_immutable
class CheckOutCard extends StatelessWidget {
  CheckOutCard({required this.checkBorder,required this.shadow,required this.containerColor,required this.checkButtonColor,required this.onTap,Key? key}) : super(key: key);
  Color? checkButtonColor;
  Color? containerColor;
  BoxShadow shadow;

  Border? checkBorder;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 92,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: containerColor,
              // click2 == true ? AppColors.white: AppColors.scaffoldColor,
              border: checkBorder,
              // click2 == true ? null :Border.all(color: AppColors.greyLite),
              boxShadow:[shadow
                // click2 == true ? BoxShadow(color: AppColors.greyLite,blurRadius: 3,offset: Offset(0,1)) :BoxShadow()
          ],

              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: checkButtonColor,
                  // click2 == true ? AppColors.mainColor: AppColors.white,
                  border: checkBorder
                  // click2 == true ? null :Border.all(color: AppColors.greyLite),

                ),
                child: SvgPicture.asset(AppIcons.check),
              ),
              const SizedBox(
                width: 23,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 11,
                  ),
                  const Text("Home", style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text("(342)  4522019",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text("220  Montmartre,paris",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                  const SizedBox(
                    height: 11,
                  ),
                ],
              ),
              const SizedBox(width: 125,),

              SvgPicture.asset(AppIcons.edit),
              const SizedBox(
                width: 15,
              ),
            ],
          ),

        ),
      ),
    )
    ;
  }
}
