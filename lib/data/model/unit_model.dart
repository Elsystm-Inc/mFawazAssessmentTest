class Unit {
  String id;
  String price;
  String type;
  String desc;
  String city;
  List<String> images;
  String noBR;
  String noR;
  String area;

  Unit({
    this.id,
    this.price,
    this.type,
    this.city,
    this.area,
    this.desc,
    this.noBR,
    this.noR,
    this.images,
  });

  factory Unit.fromJson(Map<String, dynamic> data) {
    return Unit(
      //This will be used to convert JSON objects that
      //are coming from querying the database and converting
      //it into a User object
      id: data['id'],
      price: data['price'],
      type: data['type'],
      city: data['city'],
      area: data['area'],
      desc: data['desc'],
      noBR: data['no_br'],
      noR: data['no_r'],
      images: data['images'].cast<String>(),
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'city': city,
        'desc': desc,
        'area': area,
        'price': price,
        'no_br': noBR,
        'no_r': noR,
        'images': images,
        'type': type,
      };

  Map<String, dynamic> toUpdateJson() => {
        'id': id,
        'city': city,
        'desc': desc,
        'area': area,
        'price': price,
        'no_br': noBR,
        'no_r': noR,
        'images': images,
        'type': type,
      };
}
