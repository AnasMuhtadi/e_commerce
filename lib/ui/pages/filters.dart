import 'package:flutter/material.dart';
import 'package:untitled/utils/app_constant.dart';

class Filters{

   static void bottomSheetMore(context) {
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Clear"),
                    Text(
                      "Filters",
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_downward_sharp))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Category"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("New Arrival"),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

}