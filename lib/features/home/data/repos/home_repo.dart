import 'package:kenzora/core/networking/api_error_handler.dart';
import 'package:kenzora/core/networking/api_result.dart';
import 'package:kenzora/features/home/data/apis/home_api_service.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';
import 'package:kenzora/features/home/data/models/product_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<List<CategoryModel>>> getCategories() async {
    try {
      final response = await _homeApiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<ProductModel>>> getProducts() async {
    try {
      final response = await _homeApiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
