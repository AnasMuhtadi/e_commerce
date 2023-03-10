import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/shared/widget/customButton.dart';

import '../../../utils/app_constant.dart';

class PaymentCongratulation extends StatelessWidget {
  const PaymentCongratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 187,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: const EdgeInsets.all(45),
            height: 208,
            width: 208,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: AppColors.mainColor, width: 15)),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.mainColorLite,
              ),
              child: SvgPicture.asset(
                AppIcons.check,
                color: AppColors.mainColor,
              ),
            ),
          ),
          const SizedBox(
            height: 84,
          ),
          const Text(
            "Congratulation!!!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 298,
            child: Text(
              "Payment is the transfer of money services in exchange product or Payments ",
              style: TextStyle(color: AppColors.grey, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          MyButton(
            libel: const Text("Get your receipt"),
            onTap: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromRGBO(246, 126, 82, 0.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              minimumSize: const Size(253, 55),
            ),
            onPressed: () {},
            child: Text("Back to Home",style: TextStyle(color: AppColors.mainColor),),
          )
        ],
      ),
    );
  }
}
