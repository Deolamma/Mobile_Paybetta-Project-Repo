import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paybetta/ui/shared/const_app_colors.dart';
import 'package:paybetta/ui/views/get_started_screen/get_started_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GetStartedScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GetStartedScreenViewModel>.nonReactive(
        viewModelBuilder: () => GetStartedScreenViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  model.logo,
                  height: 189,
                  width: 223.57,
                ),
                SizedBox(height: 20),
                Text(
                  model.createAcct,
                  style: GoogleFonts.openSans(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    color: pbAppColor,
                    height: 56,
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        model.start,
                        style: GoogleFonts.openSans(
                            fontSize: 16, color: pbWhiteColor),
                      ),
                    )),
                SizedBox(height: 20),
                Container(
                    height: 56,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: pbAppColor),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        model.login,
                        style: GoogleFonts.openSans(
                            fontSize: 16, color: pbAppColor),
                      ),
                    )),
              ],
            ),
          ));
        });
  }
}
