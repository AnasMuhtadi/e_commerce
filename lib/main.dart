import 'package:flutter/material.dart';
import 'package:untitled/routing/navigation.dart';
import 'package:untitled/routing/router.dart';
import 'package:untitled/routing/routes.dart';
import 'package:untitled/ui/pages/home.dart';
import 'package:untitled/utils/app_constant.dart';


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
      home: const Scaffold(body: Home()),
    );
  }
}
