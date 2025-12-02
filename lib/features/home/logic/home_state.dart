import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kenzora/core/networking/api_error_handler.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';
import 'package:kenzora/features/home/data/models/product_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // categories state
  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.categoriesSuccess(List<CategoryModel> categories) =
      CategoriesSuccess;
  const factory HomeState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;

  // products state
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(List<ProductModel> products) =
      ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;

  // combined state when both categories and products are available
  const factory HomeState.loaded(
    List<CategoryModel> categories,
    List<ProductModel> products,
  ) = Loaded;
}
