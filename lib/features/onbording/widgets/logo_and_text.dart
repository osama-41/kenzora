import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/helpers/spacing.dart';
import 'package:kenzora/core/theming/styles.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20.h),
        Center(
          child: Image.asset(
            'assets/images/kenzora_dark_blue_logo.png',
            height: 100.h,
            width: 250.w,
          ),
        ),
        verticalSpace(20.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 0),
          child: Text('Be Unique,', style: TextStyles.font32LightGreyBold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 0),
          child: Text(
            'With your own style.',
            style: TextStyles.font28LightGreyMedium,
          ),
        ),
      ],
    );
  }
}
