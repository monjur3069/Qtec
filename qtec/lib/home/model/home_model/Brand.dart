class Brand {
  Brand({
      this.name, 
      this.image, 
      this.headerImage, 
      this.slug,});

  Brand.fromJson(dynamic json) {
    name = json['name'];
    image = json['image'];
    headerImage = json['header_image'];
    slug = json['slug'];
  }
  String? name;
  String? image;
  dynamic headerImage;
  String? slug;
Brand copyWith({  String? name,
  String? image,
  dynamic headerImage,
  String? slug,
}) => Brand(  name: name ?? this.name,
  image: image ?? this.image,
  headerImage: headerImage ?? this.headerImage,
  slug: slug ?? this.slug,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['image'] = image;
    map['header_image'] = headerImage;
    map['slug'] = slug;
    return map;
  }

}