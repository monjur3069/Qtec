import 'Data.dart';
class HomeModel {
  String? error;
  HomeModel({
      this.status, 
      this.data,});

  HomeModel.withError(String errorMessage){
    error = errorMessage;

  }

  HomeModel.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  Data? data;
HomeModel copyWith({  String? status,
  Data? data,
}) => HomeModel(  status: status ?? this.status,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}