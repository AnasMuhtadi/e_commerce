import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/shared/widget/customButton.dart';
import 'package:untitled/utils/app_constant.dart';

import '../../shared/widget/colorProduct.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String heart = AppIcons.redHeartOutline;
  int colorSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backegrondItem,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                    ),
                    Container(
                      height: 44.5,
                      width: 44.5,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              heart = heart == AppIcons.redHeartOutline
                                  ? AppIcons.redHeart
                                  : AppIcons.redHeartOutline;
                            });
                          },
                          icon: SvgPicture.asset(
                            heart,
                            height: 20,
                            width: 20,
                          )),
                    )
                  ],
                ),
              ),
              Image.asset(AppImage.itemProduct, height: 350),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(45),
                      topLeft: Radius.circular(45),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 21, right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 145,
                            child: Text(
                              "Casual Henley Shirts",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text('\$175',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 16.5,
                      ),
                      Text(
                        "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                        style: TextStyle(fontSize: 14, color: AppColors.grey),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text("Colors",
                          style:
                              TextStyle(fontSize: 18, color: AppColors.grey)),
                      const SizedBox(
                        height: 18.5,
                      ),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                            itemExtent: 45,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return ColorProduct(
                                color: AppLists.productColor[index],
                                onTap: () {
                                  setState(() {
                                    colorSelect = AppLists.currentColor[index];
                                  });
                                },
                                border: (colorSelect == index)
                                    ? Border.all(
                                        color: AppColors.mainColor, width: 2)
                                    : Border.all(color: Colors.transparent),
                                padding: (colorSelect == index)
                                    ? const EdgeInsets.all(3)
                                    : const EdgeInsets.all(0),
                              );
                            },
                            itemCount: AppLists.currentColor.length),
                      ),
                      const SizedBox(
                        height: 21.5,
                      ),
                      Center(
                          child: MyButton(
                              libel: const Text("Add to Cart"), onTap: () {}))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
