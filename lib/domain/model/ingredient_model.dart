class IngredientModel {
  final int id;
  final String name;
  final String image;

  IngredientModel({
    required this.id,
    required this.name,
    required this.image,
  });

  IngredientModel.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int,
      name = json['name'] as String,
      image = json['image'] as String;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'IngredientModel{id: $id, name: $name, image: $image}';
  }
}
