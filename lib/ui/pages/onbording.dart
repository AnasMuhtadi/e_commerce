import 'package:flutter/material.dart';
import 'package:untitled/ui/shared/widget/onBordingBotton.dart';
import 'package:untitled/ui/shared/widget/rowSeeAll.dart';
import 'package:untitled/utils/appConstant.dart';
import '../../routing/navigation.dart';
import '../../routing/router.dart';
import '../shared/widget/customButton.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int pageNum = 0;
  final _control = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only( left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45,),
              SeeAll(
                textLift: "${pageNum + 1}/3",
                textRite: "Skip",
                onTap: () {
                  ServiceNavigations.pushNamedReplacement(
                      RouteGenerator.signInPage);
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: Expanded(
                  child: OverflowBox(
                    maxWidth: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return Image(
                            image: AssetImage(AppLists.onbordingImages[index]));
                      },
                      controller: _control,
                      itemCount: AppLists.onbordingImages.length,
                      onPageChanged: (value) {
                        setState(() {
                          pageNum = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Text(
                AppLists.onbordingLibel[pageNum],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                AppLists.onbordingDescription[pageNum],
                style: const TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: MyButton(
                  libel: OnbordingButton(
                    pageNum: pageNum,
                  ),
                  onTap: () {
                    (pageNum == 2)
                        ? ServiceNavigations.pushNamedReplacement(
                            RouteGenerator.signInPage)
                        : _control.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
