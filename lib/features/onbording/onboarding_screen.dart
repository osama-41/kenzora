import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/helpers/spacing.dart';
import 'package:kenzora/core/theming/colors.dart';
import 'package:kenzora/features/onbording/widgets/get_started_button.dart';
import 'package:kenzora/features/onbording/widgets/logo_and_text.dart';
import 'package:kenzora/features/onbording/widgets/onboarding_photo.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                LogoAndText(),
                verticalSpace(16.h),
                OnboardingPhoto(),
                verticalSpace(90.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const GetStartedButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
