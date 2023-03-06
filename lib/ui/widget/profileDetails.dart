import 'package:flutter/material.dart';

import '../../utils/appConstant.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyLite),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("Chris Harison ",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Email: ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("alex@msn.com",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 13,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Location: ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("San Diego",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Zip Code: ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("1200",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Phone Number: ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("(+1) 5484 4757 84",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Location: ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("San Diego",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                )),
              ],),
          ],
        ),
      ),
    );
  }
}
