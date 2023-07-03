import 'package:suqle_app/Data/Web_services/categories_web_services.dart';
import 'package:suqle_app/Data/models/categories.dart';

class CategoriesRepository {
  final CategoriesWebServices categoriesWebServices;

  CategoriesRepository(this.categoriesWebServices);

  Future<List<dynamic>> getAllCategories() async {
    final categories = await categoriesWebServices.getAllCategories();
    return categories.map((category) => Categories.fromJson(category)).toList();
  }
}
