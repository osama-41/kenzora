import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenzora/core/helpers/spacing.dart';
import 'package:kenzora/features/home/logic/home_cubit.dart';
import 'package:kenzora/features/home/logic/home_state.dart';
import 'package:kenzora/features/home/ui/widgets/categories_list_view.dart';
import 'package:kenzora/features/home/ui/widgets/products_list_view.dart';

class CategoriesAndProductsBlocBuilder extends StatelessWidget {
  const CategoriesAndProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return setupLoading();
          },
          // Both lists available
          loaded: (categories, products) {
            return Expanded(
              child: Column(
                children: [
                  CategoriesListView(categoriesList: categories),
                  verticalSpace(8.h),
                  Expanded(child: ProductsListView(productsList: products)),
                ],
              ),
            );
          },
          categoriesSuccess: (categories) {
            return setupSuccess(categories);
          },
          categoriesError: (errorHandler) => setupError(),  
          orElse: () => const SizedBox.shrink(),  
        );
      },
    );
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget setupSuccess(categories) {
    return Expanded(
      child: Column(children: [CategoriesListView(categoriesList: categories)]),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
