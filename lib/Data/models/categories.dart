class Categories {
  late int categoryName;
  late String image;

  Categories.fromJson(Map<String , dynamic> json) {
    categoryName = json["cateName"];
    image = json["img"];
  }
}
