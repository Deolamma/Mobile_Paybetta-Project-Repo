import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paybetta/app/app.locator.dart';
import 'package:paybetta/app/app.router.dart';
import 'package:paybetta/constant/app_strings.dart';
import 'package:paybetta/ui/shared/const_app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const PayBetta());
}

class PayBetta extends StatelessWidget {
  const PayBetta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 823),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppName,
            theme: ThemeData(
              primaryColor: pbAppColor,
              appBarTheme:const AppBarTheme(
                color: pbAppColor
              )
            ),
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
          );
        });
  }
}
