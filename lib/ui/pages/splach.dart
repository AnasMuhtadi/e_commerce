import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/utils/app_constant.dart';

import '../../routing/navigation.dart';
import '../../routing/router.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _startScreen();
  }
  _startScreen()async{
    await Future.delayed(const Duration(milliseconds: 3000,));
    ServiceNavigations.pushNamedReplacement(RouteGenerator.onBoarding);

    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const onbording(),));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SvgPicture.asset(AppIcons.logo)
        
      ),
    );
  }
}



