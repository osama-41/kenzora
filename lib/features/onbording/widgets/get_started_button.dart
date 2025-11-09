import 'package:flutter/material.dart';
import 'package:kenzora/core/helpers/extensions.dart';
import 'package:kenzora/core/routing/routes.dart';
import 'package:kenzora/core/theming/colors.dart';
import 'package:kenzora/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:WidgetStateProperty.all(ColorsManager.mainGreen),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      onPressed: () {
        context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (route) => false);
      },
      child: Text('Get Started', style: TextStyles.font16WhiteMedium),
    );
  }
}
