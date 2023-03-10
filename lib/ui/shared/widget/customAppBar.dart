import 'package:flutter/material.dart';
import 'package:untitled/utils/appConstant.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.leadingImage,required this.title,required this.actionsImages, Key? key}) : super(key: key);
  Widget? leadingImage;
  List<Widget>? actionsImages;
  String  title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        AppBar(
            title: Text(title,style: TextStyle(color: AppColors.black,fontSize: 24,fontWeight: FontWeight.w500),),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,

            leading: Padding(
              padding: const EdgeInsets.only(
                  left: 21, right: 15),
              child: leadingImage
            ),
            actions: actionsImages


        ),
      ],
    );
  }
}
