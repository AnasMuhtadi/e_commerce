import 'package:flutter/material.dart';
import 'package:untitled/routing/navigation.dart';
import 'package:untitled/routing/router.dart';
import 'package:untitled/routing/routes.dart';
import 'package:untitled/ui/pages/homePages/checkOut.dart';
import 'package:untitled/ui/pages/homePages/myCart.dart';
import 'package:untitled/ui/pages/homePages/paymentCongratulation.dart';
import 'package:untitled/ui/pages/homePages/productDetails.dart';
import 'package:untitled/ui/pages/homePages/profile.dart';
import 'package:untitled/ui/pages/signUp.dart';
import 'package:untitled/ui/pages/splach.dart';
import 'package:untitled/utils/appConstant.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldColor,

          fontFamily: 'Gordita'
      ),
      onGenerateRoute:RoutsGnerate.generateRoute,
      initialRoute:RouteGenerator.splashPage,
      navigatorKey: ServiceNavigations.navKey,
      home: const Scaffold(body: CheckOut()),
    );
  }
}
