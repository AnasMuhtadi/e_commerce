import 'package:flutter/material.dart';

import '../../utils/appConstant.dart';

class CheckOutPrice extends StatelessWidget {
  const CheckOutPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 132,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Fee     : ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("\$50",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal            : ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("\$740",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
              ],),
            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 0.5,
              child: Expanded(
                child: OverflowBox(
                  maxWidth:360 ,
                  child: Divider(
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total                   : ",style: TextStyle(color: AppColors.grey,fontSize: 14)),
                const Text("\$790",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
              ],),
          ],
        ),
      ),
    )
    ;
  }
}
