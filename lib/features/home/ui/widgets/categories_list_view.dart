import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';
import 'package:kenzora/features/home/ui/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel?> categoriesList;
  const CategoriesListView({super.key, required this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return CategoriesListViewItem(
            category: categoriesList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
