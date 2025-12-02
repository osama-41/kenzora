import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/helpers/spacing.dart';
import 'package:kenzora/features/home/ui/widgets/categories_and_products_bloc_builder.dart';
import 'package:kenzora/features/home/ui/widgets/categories_see_all.dart';
import 'package:kenzora/features/home/ui/widgets/discount_green_container.dart';
import 'package:kenzora/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeTopBar(),
              const DiscountGreenContainer(),
              verticalSpace(24.h),
              const CategoriesSeeAll(),
              verticalSpace(18.h),
              const CategoriesAndProductsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
