import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/helpers/spacing.dart';
import 'package:kenzora/core/theming/styles.dart';
import 'package:kenzora/features/home/data/models/product_model.dart';

class ProductsListViewItem extends StatelessWidget {
  final ProductModel? productModel;
  const ProductsListViewItem({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              productModel?.images?.isNotEmpty ?? false
                  ? productModel!.images!.first
                  : 'https://via.placeholder.com/120',
              width: 120.w,
              height: 120.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 120.w,
                  height: 120.h,
                  color: const Color(0xFFE0E0E0),
                  child: const Icon(Icons.image_not_supported),
                );
              },
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel?.title ?? 'Title',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  productModel?.category?.name ?? '',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  '${productModel?.price}\$',
                  style: TextStyles.font14GreenMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
