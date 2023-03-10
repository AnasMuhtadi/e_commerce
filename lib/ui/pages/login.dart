import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../routing/navigation.dart';
import '../../routing/router.dart';
import '../../utils/app_constant.dart';
import '../shared/widget/customButton.dart';
import '../shared/widget/customLogin(or).dart';
import '../shared/widget/customTextFormFild.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? user;
  String? pass;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   chickPass() async{
    SharedPreferences data = await SharedPreferences.getInstance();
    return pass = data.getString("pass");
  }
  chickName() async{
    SharedPreferences data = await SharedPreferences.getInstance();
    return user =  data.getString("user");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only( left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 99,),
              SvgPicture.asset(
                AppIcons.logo,
                width: 54,
                height: 62,
              ),
              SizedBox(height: 38,),
              Text(
                "Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 101,),

              MyFormFild(
                val: (val){
                  chickName();
                  if(val != user){
                    return "Invalid Username";
                  }
                  return null;
                },
                hint: "UserName",
                image: AppIcons.messeage,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: MyFormFild(
                  val: (val){
                    chickPass();
                    if(val != pass){
                      return "Invalid Password";
                    }
                    return null;
                  },
                  hint: "Password",
                  image:AppIcons.lock,
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400)))),
              Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: MyButton(libel: const Text("Log in"), onTap: () {
                    if(_formKey.currentState!.validate()){
                      ServiceNavigations.pushNamedReplacement(
                          RouteGenerator.home);
                    }

                  })),
              const Text("----------------      Or      -----------------"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CirclerButton(
                    image:AppImage.feasbook,
                    mytop: 30,
                    mybottom: 20,
                  ),
                  CirclerButton(
                    image: AppImage.google,
                    mytop: 30,
                    myleft: 40,
                    mybottom: 20,
                  ),
                ],
              ),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                      text: "Don’t have an account? ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                    text: "Sing Up",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ServiceNavigations.pushNamedReplacement(RouteGenerator.signUpPage);

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const singUp(),
                        //     ));
                      },
                    style: const TextStyle(
                        color: Color.fromRGBO(246, 126, 82, 1),
                        fontWeight: FontWeight.bold),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
