part of 'home_screen_cubit_cubit.dart';

@immutable
abstract class HomeScreenCubitState {}

class HomeScreenCubitInitial extends HomeScreenCubitState {}


class CategoriesLoaded extends HomeScreenCubitState{
  final List<dynamic> categories;
  CategoriesLoaded(this.categories);

}

