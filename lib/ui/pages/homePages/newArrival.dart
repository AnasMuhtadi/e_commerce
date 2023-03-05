import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/ui/shared/widget/customButton.dart';

import '../../../utils/appConstant.dart';
import '../../shared/widget/formFildFilter.dart';
import '../../shared/widget/item.dart';
import '../filters.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

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
              FormFildFilter(hint: "Search items...",onTap:() => _bottomSheetMore(context),),
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

  void _bottomSheetMore(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        elevation: 50,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 600,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Clear"),
                      const Text(
                        "Filters",
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_downward_sharp))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(height: 0.2,color: AppColors.grey,),
                  const SizedBox(
                    height: 30,
                  ),

                  const Text("Category"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("New Arrival",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.white))),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(child: Text("Top Tranding",style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(child: Text("Featured Products",style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text("Pricing"),Text("\$50-\$200")],),
                  const SizedBox(height: 30,),
                  RangeSlider(
                    activeColor: AppColors.mainColor,
                    values: (_currentRangeValues),
                    inactiveColor: AppColors.grey,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },),
                  const SizedBox(height: 30,),
                  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text("Distance"),Text("500m-2Km")],),
                  RangeSlider(
                    values: (_currentRangeValues),
                    activeColor: AppColors.mainColor,
                    inactiveColor: AppColors.grey,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },),
                  const SizedBox(height: 30,),
                  MyButton(libel:Text( "Apply Filter"), onTap: (){})



                ],
              ),
            ),
          );
        });
  }
}
