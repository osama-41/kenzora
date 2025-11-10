import 'package:flutter/material.dart';
import 'package:kenzora/core/theming/styles.dart';

class CategoriesSeeAll extends StatelessWidget {
  const CategoriesSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Categories', style: TextStyles.font18DarkBlueBold),
        const Spacer(),
        Text('See All', style: TextStyles.font12GreenRegular),
      ],
    );
  }
}
