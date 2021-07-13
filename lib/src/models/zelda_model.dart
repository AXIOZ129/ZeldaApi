class ZeldaModel {
  int? attack;
  String? category;
  int? defense;
  String? description;
  String? image;
  String? name;
  List<dynamic>? commonLocations;

  ZeldaModel(
      {this.attack,
      this.category,
      this.defense,
      this.description,
      this.image,
      this.commonLocations,
      this.name});

  factory ZeldaModel.mapJson(Map<String, dynamic> data) => ZeldaModel(
      attack: data['attack'],
      category: data['category'],
      defense: data['defense'],
      description: data['description'],
      image: data['image'],
      name: data['name'],
      commonLocations: data['common_locations']);
}
