import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'home_screen_cubit_state.dart';

class HomeScreenCubitCubit extends Cubit<HomeScreenCubitState> {
  HomeScreenCubitCubit() : super(HomeScreenCubitInitial());
}
