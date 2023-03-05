import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/appConstant.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width:500,
          height: 220,
          child: Image.asset(
            AppImage.backegraound,
            fit: BoxFit.fill,
            height: 220,
            width:500,
          ),
        ),
        Positioned(
          left: 130,
          bottom: -20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(AppImage.alexPerson,height: 140,
              width: 140,fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              SvgPicture.asset(AppIcons.threePoints)

            ],
          ),
        ),


      ],
    );
  }
}
