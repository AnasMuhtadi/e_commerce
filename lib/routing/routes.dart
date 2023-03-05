
import 'package:flutter/material.dart';
import 'package:untitled/routing/router.dart';
import 'package:untitled/ui/pages/home.dart';
import 'package:untitled/ui/pages/homePages/newArrival.dart';

import '../ui/pages/login.dart';
import '../ui/pages/onbording.dart';
import '../ui/pages/signUp.dart';
import '../ui/pages/splach.dart';



class RoutsGnerate{
  static Route<dynamic> generateRoute(RouteSettings settings){
    Widget result;
    switch(settings.name){
      case RouteGenerator.splashPage:
        result = const Splash();
        break;
      case RouteGenerator.onBoarding:
        result = const Onbording();
            break;
      case RouteGenerator.signUpPage:
        result = const SignUp();
        break;
      case RouteGenerator.signInPage:
        result = const Login();
        break;
      case RouteGenerator.home:
        result = const Home();
        break;
        case RouteGenerator.newArrival:
        result = const NewArrival();
        break;
      default :
        result = const Splash();
    }
    return MaterialPageRoute(builder: ((context) => result));

  }
}