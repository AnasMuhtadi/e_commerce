// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/shared/widget/categoryItem.dart';
import 'package:untitled/ui/shared/widget/formFildFilter.dart';
import 'package:untitled/ui/shared/widget/item.dart';
import 'package:untitled/ui/shared/widget/rowSeeAll.dart';
import 'package:untitled/utils/appConstant.dart';
import '../../shared/widget/customButton.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
                width: double.infinity,
              ),
              Text(
                "Explore",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "best Outfits for you",
                style: TextStyle(color: AppColors.grey, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              FormFildFilter(
                  hint: "Search items...",
                  onTap: () => showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Clear"),
                                    const Text(
                                      "Filters",
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                            Icons.arrow_downward_sharp))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 0.2,
                                  color: AppColors.grey,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text("Category"),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: AppColors.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text("New Arrival",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.white))),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        "Top Tranding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text("Featured Products",
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Pricing"),
                                    Text("\$50-\$200")
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                StatefulBuilder(
                                  builder: (context, setStates) =>
                                  RangeSlider(
                                    activeColor: AppColors.mainColor,
                                    values: (_currentRangeValues),
                                    inactiveColor: AppColors.grey,
                                    max: 100,
                                    divisions: 5,
                                    labels: RangeLabels(
                                      _currentRangeValues.start
                                          .round()
                                          .toString(),
                                      _currentRangeValues.end.round().toString(),
                                    ),
                                    onChanged: (RangeValues values) {
                                      setState(() {
                                        debugPrint("This is in set state");
                                        _currentRangeValues = values;
                                      });
                                      setStates((){
                                        _currentRangeValues = values;
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Distance"),
                                    Text("500m-2Km")
                                  ],
                                ),
                                RangeSlider(
                                  values: (_currentRangeValues),
                                  activeColor: AppColors.mainColor,
                                  inactiveColor: AppColors.grey,
                                  max: 100,
                                  divisions: 5,
                                  labels: RangeLabels(
                                    _currentRangeValues.start
                                        .round()
                                        .toString(),
                                    _currentRangeValues.end.round().toString(),
                                  ),
                                  onChanged: (RangeValues values) {
                                    setState(() {
                                      _currentRangeValues = values;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MyButton(
                                    libel: const Text("Apply Filter"), onTap: () {})
                              ],
                            ),
                          ),
                        );
                      })),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(text: "Drees", image: AppIcons.drees),
                  CategoryItem(text: "Shirt", image: AppIcons.shirt),
                  CategoryItem(text: "Pants", image: AppIcons.pants),
                  CategoryItem(text: "Tshirt", image: AppIcons.tshirt),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SeeAll(textRite: "New Arrival",textLift: "SeeAll",onTap: () {

              },),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 190,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Item(
                          image: AppImage.item2,
                          text: "Long Sleeve Shirts",
                          prise: "\$165");
                    },
                    itemCount: 4,
                    scrollDirection: Axis.horizontal),
              )
            ],
          ),
        ),
      ),
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
                  Container(
                    height: 0.2,
                    color: AppColors.grey,
                  ),
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text("New Arrival",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white))),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "Top Tranding",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text("Featured Products",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Pricing"), Text("\$50-\$200")],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
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
                        debugPrint("This is in set state");
                        _currentRangeValues = values;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Distance"), Text("500m-2Km")],
                  ),
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
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(libel: const Text("Apply Filter"), onTap: () {})
                ],
              ),
            ),
          );
        });
  }
}
