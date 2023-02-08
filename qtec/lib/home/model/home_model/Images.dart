class Images {
  Images({
      this.id, 
      this.image, 
      this.isPrimary, 
      this.product,});

  Images.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    isPrimary = json['is_primary'];
    product = json['product'];
  }
  num? id;
  String? image;
  bool? isPrimary;
  num? product;
Images copyWith({  num? id,
  String? image,
  bool? isPrimary,
  num? product,
}) => Images(  id: id ?? this.id,
  image: image ?? this.image,
  isPrimary: isPrimary ?? this.isPrimary,
  product: product ?? this.product,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['is_primary'] = isPrimary;
    map['product'] = product;
    return map;
  }

}