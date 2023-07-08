import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suqle_app/Data/Repository/categories_repository.dart';
import 'package:suqle_app/Data/Web_services/categories_web_services.dart';
import 'package:suqle_app/Presentation/Screen/Home_screen/Home_screen.dart';
import 'package:suqle_app/Presentation/Screen/Splash_screen/Splash_screen.dart';

import 'package:suqle_app/Business_Logic/cubit/home_screen_cubit_cubit.dart';


class AppRouter {
  late CategoriesRepository categoriesRepository;
  late CategoriesCubit categoriesCubit;

  AppRouter() {
    categoriesRepository = CategoriesRepository(CategoriesWebServices());
    categoriesCubit = CategoriesCubit(categoriesRepository);
  }

  Route? generateRout(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) => CategoriesCubit(categoriesRepository),
              child: const HomeScreen()),
        );
//____________________________________________________________________
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
