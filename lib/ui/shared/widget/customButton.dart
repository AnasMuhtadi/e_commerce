// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  Widget libel;
  Function() onTap;

   MyButton({super.key, required this.libel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(246, 126, 82, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)),
        minimumSize: const Size(253, 55),
      ),
      onPressed: onTap

      ,
      child: libel,
    );
  }
}
