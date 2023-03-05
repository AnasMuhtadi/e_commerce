import 'package:flutter/material.dart';
import 'package:untitled/ui/widget/profileBackground.dart';
import 'package:untitled/utils/appConstant.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileBackground(),
          const SizedBox(height: 50,),
          const Text("Alex Nikiforov",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          const SizedBox(height: 5,),
          Text("alex@msn.com", style: TextStyle(fontSize: 14, color: AppColors.grey),),
          const SizedBox(height: 25,),

        ],
      )
    );
  }
}
