import 'Results.dart';

class Products {
  Products({
      this.count, 
      this.next, 
      this.previous, 
      this.results,});

  Products.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  num? count;
  String? next;
  String? previous;
  List<Results>? results;
Products copyWith({  num? count,
  String? next,
  String? previous,
  List<Results>? results,
}) => Products(  count: count ?? this.count,
  next: next ?? this.next,
  previous: previous ?? this.previous,
  results: results ?? this.results,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}