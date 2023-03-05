
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyFormFild extends StatelessWidget {
   MyFormFild({required this.hint,required this.image, this.val, Key? key}) : super(key: key);
  String hint;
  String image;
  String? Function(String?)? val;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: val,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(30),
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 10,right: 5),
            padding: const EdgeInsets.all(10),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(246, 121, 82, 0.1),
            ),
            child: SvgPicture.asset(image),
          ),
          // prefixIcon: Container(height: 50,width: 50,color: Colors.red,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          hintText: hint,
          filled: true,
          fillColor: Colors.white),
    );
  }
}
