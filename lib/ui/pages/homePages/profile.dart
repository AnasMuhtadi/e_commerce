import 'package:flutter/material.dart';
import 'package:untitled/ui/widget/PersonInfoBox.dart';
import 'package:untitled/ui/widget/profileBackground.dart';
import 'package:untitled/ui/widget/profileDetails.dart';
import 'package:untitled/utils/app_constant.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: const ProfileBackground(),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Alex Nikiforov",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "alex@msn.com",
            style: TextStyle(fontSize: 14, color: AppColors.grey),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PersonInfoBox(image: AppIcons.bag, name: "Progress order", num: "10+",color: AppColors.mainColorLite,),
              PersonInfoBox(image: AppIcons.ticket, name: "Promocodes", num: "4.5K",color: AppColors.blueLite,),
              PersonInfoBox(image: AppIcons.star, name: "Reviewes", num: "5",color: AppColors.yellowLite,),
            ],
          ),
          const SizedBox(height: 50,),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Personal Information",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height:15),
          const ProfileDetails()


        ],
      ),
    ));
  }
}
