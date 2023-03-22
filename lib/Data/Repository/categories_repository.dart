import 'package:suqle_app/Data/Web_services/categories_web_services.dart';
import 'package:suqle_app/Data/models/categories.dart';

class CategoriesRepository {
  final CategoriesWebSetvices categoriesWebSetvices;

  CategoriesRepository(this.categoriesWebSetvices);

  Future<List<dynamic>> getAllCategories() async {
    final categories = await categoriesWebSetvices.getAllCategories();
    return categories.map((category) => Categories.fromJson(category)).toList();
  }
}
