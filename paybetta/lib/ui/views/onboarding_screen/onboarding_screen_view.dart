import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paybetta/ui/shared/const_app_colors.dart';
import 'package:paybetta/ui/views/onboarding_screen/onboarding_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnboardingScreenView extends StatelessWidget {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingScreenViewModel>.reactive(
        viewModelBuilder: () => OnboardingScreenViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                    child: PageView.builder(
                        controller: model.controller2,
                        itemCount: model.controller.onboardingPagges.length,
                        onPageChanged: model.pageChange,
                        itemBuilder: (_, i) {
                          return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Image.asset(
                                      model
                                          .controller.onboardingPagges[i].image,
                                      height: 333.36,
                                      width: 340.12,
                                    )),
                                SizedBox(height: 10),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: Text(
                                      model
                                          .controller.onboardingPagges[i].title,
                                      style: GoogleFonts.openSans(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(height: 5),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: Text(
                                      model.controller.onboardingPagges[i]
                                          .description,
                                      style: GoogleFonts.openSans(fontSize: 16),
                                    )),
                              ]);
                        })),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                        child: Row(
                      children: List.generate(
                          model.controller.onboardingPagges.length,
                          (index) => Container(
                                margin: EdgeInsets.only(right: 3),
                                width: 9,
                                height: 9,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: model.currentIndex == index
                                      ? pbAppColor
                                      : pbLeftNavBarColor,
                                ),
                              )),
                    ))),
                Container(
                    color: pbAppColor,
                    height: 56,
                    margin: EdgeInsets.all(20),
                    width: 362,
                    child: TextButton(
                      onPressed: () {
                        if (model.currentIndex ==
                            model.controller.onboardingPagges.length - 1) {
                          model.navigateToGetStartedView();
                        } else {
                          model.nextPage();
                        }
                      },
                      child: Text(
                        model.currentIndex ==
                                model.controller.onboardingPagges.length - 1
                            ? model.started
                            : model.textButton,
                        style: GoogleFonts.openSans(
                            fontSize: 16, color: pbWhiteColor),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    if (model.currentIndex ==
                        model.controller.onboardingPagges.length - 1) {
                      //Navigate to login Page
                    }
                    model.skipPage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        model.currentIndex ==
                                model.controller.onboardingPagges.length - 1
                            ? model.hadAccount
                            : model.skip,
                        style: GoogleFonts.openSans(fontSize: 14),
                      ),
                      Icon(Icons.navigate_next_outlined)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        });
  }
}
