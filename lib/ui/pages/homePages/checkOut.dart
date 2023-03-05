import 'package:flutter/material.dart';
import 'package:untitled/ui/shared/widget/customAppBar.dart';
import 'package:untitled/ui/shared/widget/customButton.dart';
import 'package:untitled/ui/widget/checkOutCard.dart';
import 'package:untitled/ui/widget/checkOutPrise.dart';
import 'package:untitled/ui/widget/paymentMethod.dart';
import 'package:untitled/utils/appConstant.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  List<bool> click = [false,false];
  bool visibility = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Center(
              child: CustomAppBar(
            leadingImage: Icon(Icons.arrow_back_ios, color: AppColors.black),
            title: "Checkout",
            actionsImages: null,
          ))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Delivery address",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return CheckOutCard(
                  checkBorder: click[index] == true
                      ? null
                      : Border.all(color: AppColors.greyLite),
                  shadow: click[index] == true
                      ? BoxShadow(
                          color: AppColors.greyLite,
                          blurRadius: 3,
                          offset: const Offset(0, 1))
                      : const BoxShadow(),
                  containerColor: click[index] == true
                      ? AppColors.white
                      : AppColors.scaffoldColor,
                  checkButtonColor: click[index] == true
                      ? AppColors.mainColor
                      : AppColors.white,
                  onTap: () {
                    setState(() {
                      // int unSelectedItem = click.indexWhere((element) => element == false);
                      // click[index] = true ;
                      // click[unSelectedItem] = false;
                      if(index == 0){
                        click[index] =  true;
                        click[index+1] = false;
                      }
                      if(index == 1){
                        click[index] = true;
                        click[index-1] = false;
                      }

                    });
                  },
                );
              },
              cacheExtent: 2,
              shrinkWrap: true,
              itemCount: 2,
            ),
            const SizedBox(
              height: 37,
            ),
            const Text(
              "Billing information",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CheckOutPrice(),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Payment Method",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: AppLists.paymentImage.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      PaymentMethod(
                          visibility: visibility,
                          image: AppLists.paymentImage[index],
                          onTap: () {
                            setState(() {
                              visibility = visibility == true ? false : true;
                            });
                          }),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: MyButton(
                  libel: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.mainColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Swipe for Payment")
                    ],
                  ),
                  onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
