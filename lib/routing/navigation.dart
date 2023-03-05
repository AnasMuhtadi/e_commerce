import 'package:flutter/material.dart';
class ServiceNavigations{
  static final GlobalKey<NavigatorState>  navKey = GlobalKey<NavigatorState>();

  static pushNamedWidget(String name) {
    navKey.currentState?.pushNamed(name);
  }
  static pushNamedReplacement(String name){
    navKey.currentState?.pushReplacementNamed(name);
  }

  static popFunction() {
    navKey.currentState?.pop();
  }

  static pushNamedAndRemoveUtils(String name){
    navKey.currentState?.pushNamedAndRemoveUntil(name, (route) => false);
  }



}
