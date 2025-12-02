import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kenzora/core/networking/api_service.dart';
import 'package:kenzora/core/networking/dio_factory.dart';
import 'package:kenzora/features/home/data/apis/home_api_service.dart';
import 'package:kenzora/features/home/data/repos/home_repo.dart';
import 'package:kenzora/features/login/data/repo/login_repo.dart';
import 'package:kenzora/features/login/logic/cubit/logic_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

}
