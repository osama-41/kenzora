import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenzora/core/di/dependency_injection.dart';
import 'package:kenzora/core/routing/routes.dart';
import 'package:kenzora/features/home/ui/home_screen.dart';
import 'package:kenzora/features/login/logic/cubit/logic_cubit.dart';
import 'package:kenzora/features/login/ui/login_screen.dart';
import 'package:kenzora/features/onbording/onboarding_screen.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as ClassName)
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route defined for ${settings.name}')),
          ),
        );
    }
  }
}
