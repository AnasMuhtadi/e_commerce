import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/appConstant.dart';

class FormFildFilter extends StatelessWidget {
  String hint;


   FormFildFilter({required this.hint,required this.onTap, Key? key}) : super(key: key);
   Function() onTap;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: AppColors.white,
          prefixIcon: SizedBox(
            width: 10,
            child: Row(
              children: [
                const SizedBox(width: 10,),
                SvgPicture.asset(AppIcons.search,width: 20,height: 20,),
              ],
            ),
          ),
          suffixIcon: InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(13),
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(15)),
              child: SvgPicture.asset(AppIcons.filter),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    )
    ;
  }
}
