class Neighborhood {
  String id;
  String name;
  String noUnits;
  String image;

  Neighborhood({
    this.id,
    this.name,
    this.noUnits,
    this.image,
  });

  factory Neighborhood.fromJson(Map<String, dynamic> data) {
    return Neighborhood(
      //This will be used to convert JSON objects that
      //are coming from querying the database and converting
      //it into a User object
      id: data['id'],
      name: data['name'],
      noUnits: data['no_units'],
      image: data['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'no_units': noUnits,
      };

  Map<String, dynamic> toUpdateJson() => {
        'id': id,
        'name': name,
        'image': image,
        'no_units': noUnits,
      };
}
