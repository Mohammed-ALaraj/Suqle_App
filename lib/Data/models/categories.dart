class Categories {
  late int categorieName;
  late String image;

  Categories.fromJson(Map<String, dynamic> json) {
    categorieName = json["cateName"];
    image = json["img"];
  }
}
