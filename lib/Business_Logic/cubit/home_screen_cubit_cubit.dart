import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import '../../Data/Repository/categories_repository.dart';
part 'home_screen_cubit_state.dart';

class HomeScreenCubitCubit extends Cubit<HomeScreenCubitState> {
  final CategoriesRepository categoriesRepository;

  late List<dynamic> categories;

  HomeScreenCubitCubit(this.categoriesRepository)
      : super(HomeScreenCubitInitial());

  List<dynamic>? getAllCategories() {
    categoriesRepository.getAllCategories().then((categories) {
      emit(CategoriesLoaded(categories));
      this.categories = categories;
    });

    return categories;
  }
}
