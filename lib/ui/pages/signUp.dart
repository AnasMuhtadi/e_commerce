import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/utils/app_constant.dart';
import 'package:untitled/utils/form_validate.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../routing/navigation.dart';
import '../../routing/router.dart';
import '../shared/widget/customButton.dart';
import '../shared/widget/customLogin(or).dart';
import '../shared/widget/customTextFormFild.dart';


class SignUp extends StatefulWidget {

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? user;
  String? pass;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  save({ String? user ,String? pass }) async{
    SharedPreferences data = await SharedPreferences.getInstance();
      data.setString("user", user!);
        data.setString("pass", pass!);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SvgPicture.asset(
                  AppIcons.logo,
                  width: 80,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 40),
                  child: Text(
                    "Sing Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                MyFormFild(
                  val : (vala) {
                    if (vala!.validateName){
                      return 'Enter valid user name';
                    }else{
                      user = vala;
                    }
                    return null;
                  },
                  hint: "Name",
                  image: AppIcons.profileFild,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: MyFormFild(
                    val : (vala) {
                      if (vala!.validateEmail){
                        return 'Enter valid user Email';
                      }
                      return null;
                    },
                    hint: "Email",
                    image: AppIcons.messeage,
                  ),
                ),
                MyFormFild(
                  val : (vala) {
                    if (vala!.validatePassword){
                      return 'Enter valid user Password';
                    }else{
                      pass = vala;
                    }
                    return null;
                  },
                  hint: "Password",
                  image: AppIcons.lock,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          activeColor: const Color.fromRGBO(246, 126, 82, 1),
                          onChanged: (chinge) {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        const Text("I accept all the"),
                        const Text(
                          " Terms & Conditions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: MyButton(libel: const Text("Sign Up"), onTap: () {
                      if(_formKey.currentState!.validate()){
                        save(user: user,pass: pass);
                        ServiceNavigations.pushNamedWidget(
                            RouteGenerator.home);
                      }

                    })),
                const Text("----------------      Or      -----------------"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CirclerButton(
                      image: AppImage.feasbook,
                      mytop: 10,
                      mybottom: 10,
                    ),
                    CirclerButton(
                      image: AppImage.google,
                      mytop: 10,
                      myleft: 40,
                      mybottom: 10,
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: "Log In",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {

                          ServiceNavigations.pushNamedReplacement(RouteGenerator.signInPage);
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const Login(),
                          //     ));
                        },
                      style: const TextStyle(
                          color: Color.fromRGBO(246, 126, 82, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
