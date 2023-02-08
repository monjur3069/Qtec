import 'Dynamic.dart';
import 'Products.dart';

class Data {
  Data({
      this.categories, 
      this.products,});

  Data.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Dynamic.fromJson(v));
      });
    }
    products = json['products'] != null ? Products.fromJson(json['products']) : null;
  }
  List<dynamic>? categories;
  Products? products;
Data copyWith({  List<dynamic>? categories,
  Products? products,
}) => Data(  categories: categories ?? this.categories,
  products: products ?? this.products,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (products != null) {
      map['products'] = products?.toJson();
    }
    return map;
  }

}
