class Products {
  Products({
    this.id,
    this.title,
    this.price,
    this.model,
    this.image,
  });

  final int id;
  final Title title;
  final String price;
  final String model;
  final String image;

  factory Products.fromMap(Map<String, dynamic> json) => Products(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : titleValues.map[json["title"]],
        price: json["price"] == null ? null : json["price"],
        model: json["model"] == null ? null : json["model"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : titleValues.reverse[title],
        "price": price == null ? null : price,
        "model": model == null ? null : model,
        "image": image == null ? null : image,
      };
}

enum Title { BMW_CAR }

final titleValues = EnumValues({"BMW Car": Title.BMW_CAR});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
