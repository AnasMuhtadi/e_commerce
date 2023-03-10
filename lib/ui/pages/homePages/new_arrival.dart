import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_constant.dart';
import '../../shared/widget/formFildFilter.dart';
import '../../shared/widget/item.dart';
import '../filters.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "15/2 New Texas",
            style: TextStyle(color: AppColors.black),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              AppIcons.notification,
              height: 70,
              width: 70,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: SvgPicture.asset(
            AppIcons.menu,
            height: 50,
            width: 50,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 50,
                width: double.infinity,
              ),
              FormFildFilter(hint: "Search items...",onTap:() => Filters.bottomSheetMore(context),),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent searches",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 0.4,
                color: AppColors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Search results showing for “Shirt”",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 190
                ),
                children: [
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                  Item(
                      image: AppImage.item2,
                      text: "Long Sleeve Shirts",
                      prise: "\$165"),
                ],
              )
            ]),
          )),
    );

  }

}
