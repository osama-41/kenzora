import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/routing/app_router.dart';
import 'package:kenzora/core/routing/routes.dart';
import 'package:kenzora/core/theming/colors.dart';

class KenzoraApp extends StatelessWidget {
  final AppRouter appRouter;
  const KenzoraApp({super.key, required this.appRouter});

   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColorsManager.mainGreen,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generatRoute,
      ),
    );
  }
}
