import 'package:flutter/material.dart';
import 'package:untitled/ui/shared/widget/customAppBar.dart';

import '../../../utils/appConstant.dart';
import '../../shared/widget/item.dart';


class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(leadingImage: Icon(Icons.arrow_back_ios,color: AppColors.black,),title: "Favorite",actionsImages: const []),

      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: GridView.builder(
            itemBuilder: (context, index) {
              return    Item(
                  image: AppImage.item2,
                  text: "Long Sleeve Shirts",
                  prise: "\$165");
            },
            itemCount: 15,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                mainAxisExtent: 190
            ),
          ),
        ),
      )
      ,
    );
  }
}
