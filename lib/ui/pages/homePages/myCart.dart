import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/shared/widget/customButton.dart';

import '../../../utils/appConstant.dart';
import '../../shared/widget/customAppBar.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Center(
              child: CustomAppBar(
            leadingImage: Icon(Icons.arrow_back_ios, color: AppColors.black),
            title: "My Cart",
            actionsImages: null,
          ))),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 13),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.c,
                    children: [
                      const SizedBox(width: 14,),
                      Container(
                        height: 73,
                        width: 84,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.liteGreen,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(AppImage.itemProduct),

                      ),
                      const SizedBox(width: 19,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 10),
                          Text("Henley Shirts",style: TextStyle(color: AppColors.grey),),
                          const Text('\$175',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 10),


                        ],
                      ),
                      const SizedBox(width: 28,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                              color: AppColors.mainColorLite,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.add),
                          ),
                          const SizedBox(width: 10,),
                          const Text("1"),
                          const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.subtract),
                          ),




                        ],
                      )


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 13),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.c,
                    children: [
                      const SizedBox(width: 14,),
                      Container(
                        height: 73,
                        width: 84,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.liteGreen,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(AppImage.itemProduct),

                      ),
                      const SizedBox(width: 19,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 10),
                          Text("Henley Shirts",style: TextStyle(color: AppColors.grey),),
                          const Text('\$175',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 10),


                        ],
                      ),
                      const SizedBox(width: 28,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.add),
                          ),
                          const SizedBox(width: 10,),
                          const Text("1"),
                          const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.subtract),
                          ),




                        ],
                      )


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 13),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.c,
                    children: [
                      const SizedBox(width: 14,),
                      Container(
                        height: 73,
                        width: 84,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.liteGreen,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(AppImage.itemProduct),

                      ),
                      const SizedBox(width: 19,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 10),
                          Text("Henley Shirts",style: TextStyle(color: AppColors.grey),),
                          const Text('\$175',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 10),


                        ],
                      ),
                      const SizedBox(width: 28,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.add),
                          ),
                          const SizedBox(width: 10,),
                          const Text("1"),
                          const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.subtract),
                          ),




                        ],
                      )


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 13),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.c,
                    children: [
                      const SizedBox(width: 14,),
                      Container(
                        height: 73,
                        width: 84,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.liteGreen,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(AppImage.itemProduct),

                      ),
                      const SizedBox(width: 19,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 10),
                          Text("Henley Shirts",style: TextStyle(color: AppColors.grey),),
                          const Text('\$175',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 10),


                        ],
                      ),
                      const SizedBox(width: 28,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.add),
                          ),
                          const SizedBox(width: 10,),
                          const Text("1"),
                          const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                            height: 21,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.mainColorLite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: SvgPicture.asset(AppIcons.subtract),
                          ),




                        ],
                      )


                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: AppColors.scaffoldColor,
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal   :",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.grey),),
                        const Text('\$175',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ))

                      ],
                    ),
                  ),
                  const SizedBox(height: 32,),
                  MyButton(libel:const Text("Checkout"), onTap: (){}),
                  const SizedBox(height: 25,),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
