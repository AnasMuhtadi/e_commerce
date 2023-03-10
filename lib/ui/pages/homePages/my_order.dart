import 'package:flutter/material.dart';
import 'package:untitled/utils/app_constant.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("My Orders",style:
          TextStyle(color: AppColors.black,fontSize: 24,fontWeight: FontWeight.w500)),          centerTitle: true,
          bottom: TabBar(
            indicatorColor: AppColors.mainColor,
            labelColor:  AppColors.mainColor,
            unselectedLabelColor: AppColors.grey,
            tabs: const[
              Tab(text: "Completed",),
              Tab(text: "Cancelled",),
            ],
          ),
        ),
      ),
    );
  }
}
