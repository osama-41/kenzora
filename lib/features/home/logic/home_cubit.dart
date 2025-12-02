import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenzora/core/networking/api_result.dart';
import 'package:kenzora/features/home/data/repos/home_repo.dart';
import 'package:kenzora/features/home/logic/home_state.dart';
import 'package:kenzora/features/home/data/models/category_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  // keep last fetched categories so we can emit combined `loaded` state
  List<CategoryModel>? _categories;

  void getCategories() async {
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories();
    response.when(
      success: (categoryModel) {
        _categories = categoryModel;
        emit(HomeState.categoriesSuccess(categoryModel));
        // fetch products after categories are loaded
        getProducts();
      },
      failure: (errorHandler) {
        emit(HomeState.categoriesError(errorHandler));
      },
    );
  }

  void getProducts() async {
    emit(const HomeState.productsLoading());
    final response = await _homeRepo.getProducts();
    response.when(
      success: (products) {
        // if we already have categories, emit combined loaded state
        if (_categories != null) {
          emit(HomeState.loaded(_categories!, products));
        } else {
          emit(HomeState.productsSuccess(products));
        }
      },
      failure: (errorHandler) {
        emit(HomeState.productsError(errorHandler));
      },
    );
  }
}
