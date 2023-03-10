import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/pages/homePages/favorite.dart';
import 'package:untitled/ui/pages/homePages/main_home.dart';
import 'package:untitled/ui/pages/homePages/profile.dart';

import '../../utils/app_constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> bottomNavigationBarWidget = [MainHome(),MainHome(),Favorite(),Profile(),];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.only(bottom:60),
                    decoration: BoxDecoration(
                        color: pageIndex == 0
                            ? AppColors.mainColor
                            : AppColors.white,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: pageIndex == 0
                                  ? AppColors.mainColor
                                  : AppColors.white,
                              offset: const Offset(0, 1),
                              blurRadius: 3)
                        ]),
                    height: 10.5,
                    width: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset(
                      pageIndex == 0 ? AppIcons.home : AppIcons.homeOutline)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.only(bottom:60),
                    decoration: BoxDecoration(
                        color: pageIndex == 1
                            ? AppColors.mainColor
                            : AppColors.white,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: pageIndex == 1
                                  ? AppColors.mainColor
                                  : AppColors.white,
                              offset: Offset(0, 1),
                              blurRadius: 3)
                        ]),
                    height: 10.5,
                    width: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset(
                    pageIndex == 1 ? AppIcons.buy : AppIcons.buyOutline,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.only(bottom:60),
                    decoration: BoxDecoration(
                        color: pageIndex == 2
                            ? AppColors.mainColor
                            : AppColors.white,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: pageIndex == 2
                                  ? AppColors.mainColor
                                  : AppColors.white,
                              offset: const Offset(0, 1),
                              blurRadius: 3)
                        ]),
                    height: 10.5,
                    width: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset(
                      pageIndex == 2 ? AppIcons.heart : AppIcons.heart)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.only(bottom:60),
                    decoration: BoxDecoration(
                        color: pageIndex == 3
                            ? AppColors.mainColor
                            : AppColors.white,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: pageIndex == 3
                                  ? AppColors.mainColor
                                  : AppColors.white,
                              offset: const Offset(0, 1),
                              blurRadius: 3)
                        ]),
                    height: 10.5,
                    width: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset(pageIndex == 3
                      ? AppIcons.profile
                      : AppIcons.profileOutline)
                ],
              ),
            ),
          ],
        ),
      ),
      body: bottomNavigationBarWidget[pageIndex],
    );
  }
}
