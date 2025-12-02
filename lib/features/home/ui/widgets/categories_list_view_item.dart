import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/theming/colors.dart';
import 'package:kenzora/core/theming/styles.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';

class CategoriesListViewItem extends StatelessWidget {
  final CategoryModel? category;
  final int itemIndex;
  const CategoriesListViewItem({super.key, this.category, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 20.w),
      child: Column(
        children: [
          Container(
            height: 30.h,
            decoration: BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(category?.name ?? 'Category', style: TextStyles.font13WhiteMedium),
              ),
            ),
          ),
        ],
      ),
    );
  }
}