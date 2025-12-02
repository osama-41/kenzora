import 'package:dio/dio.dart';
import 'package:kenzora/core/networking/api_constants.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';
import 'package:kenzora/features/home/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  /// Get all categories
  @GET(HomeApiConstants.categoriesEP)
  Future<List<CategoryModel>> getCategories();

  /// Get all products
  @GET(HomeApiConstants.productsEP)
  Future<List<ProductModel>> getProducts();
}
