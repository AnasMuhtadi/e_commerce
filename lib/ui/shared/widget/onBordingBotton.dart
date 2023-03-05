// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/appConstant.dart';

class OnbordingButton extends StatelessWidget {
  OnbordingButton({required this.pageNum, Key? key}) : super(key: key);
  int pageNum;

  @override
  Widget build(BuildContext context) {
    if (pageNum == 0) {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Next  ",),
        SvgPicture.asset(AppIcons.arrow),
      ]);
    } if (pageNum == 1) {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Next  ",),
        SvgPicture.asset(AppIcons.arrow,color: AppColors.whiteLite,),
        SvgPicture.asset(AppIcons.arrow),
      ]);
    } else{
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Get Started  "),
        SvgPicture.asset(AppIcons.arrow,color: AppColors.whiteLite,),
        SvgPicture.asset(AppIcons.arrow ,color: AppColors.whiteLite,),
        SvgPicture.asset(AppIcons.arrow),
      ]);
    }

    // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    //   Text(
    //     (pageNum == 2) ? "Get Started " : "Next",
    //   ),
    //   SvgPicture.asset(AppIcons.arrow),
    // ]);
  }
}
