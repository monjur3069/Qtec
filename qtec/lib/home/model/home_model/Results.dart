import 'Brand.dart';
import 'Charge.dart';
import 'Dynamic.dart';
import 'Images.dart';

class Results {
  Results({
      this.id, 
      this.brand, 
      this.image, 
      this.charge, 
      this.images, 
      this.slug, 
      this.productName, 
      this.model, 
      this.commissionType, 
      this.amount, 
      this.tag, 
      this.description, 
      this.note, 
      this.embaddedVideoLink, 
      this.maximumOrder, 
      this.stock, 
      this.isBackOrder, 
      this.specification, 
      this.warranty, 
      this.preOrder, 
      this.productReview, 
      this.isSeller, 
      this.isPhone, 
      this.willShowEmi, 
      this.badge, 
      this.isActive, 
      this.sackEquivalent, 
      this.createdAt, 
      this.updatedAt, 
      this.language, 
      this.seller, 
      this.combo, 
      this.createdBy, 
      this.updatedBy, 
      this.category, 
      this.relatedProduct, 
      this.filterValue, 
      this.distributors,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    image = json['image'];
    charge = json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    slug = json['slug'];
    productName = json['product_name'];
    model = json['model'];
    commissionType = json['commission_type'];
    amount = json['amount'];
    tag = json['tag'];
    description = json['description'];
    note = json['note'];
    embaddedVideoLink = json['embadded_video_link'];
    maximumOrder = json['maximum_order'];
    stock = json['stock'];
    isBackOrder = json['is_back_order'];
    specification = json['specification'];
    warranty = json['warranty'];
    preOrder = json['pre_order'];
    productReview = json['product_review'];
    isSeller = json['is_seller'];
    isPhone = json['is_phone'];
    willShowEmi = json['will_show_emi'];
    badge = json['badge'];
    isActive = json['is_active'];
    sackEquivalent = json['sack_equivalent'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    language = json['language'];
    seller = json['seller'];
    combo = json['combo'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    category = json['category'] != null ? json['category'].cast<num>() : [];
    if (json['related_product'] != null) {
      relatedProduct = [];
      json['related_product'].forEach((v) {
        relatedProduct?.add(Dynamic.fromJson(v));
      });
    }
    if (json['filter_value'] != null) {
      filterValue = [];
      json['filter_value'].forEach((v) {
        filterValue?.add(Dynamic.fromJson(v));
      });
    }
    if (json['distributors'] != null) {
      distributors = [];
      json['distributors'].forEach((v) {
        distributors?.add(Dynamic.fromJson(v));
      });
    }
  }
  num? id;
  Brand? brand;
  String? image;
  Charge? charge;
  List<Images>? images;
  String? slug;
  String? productName;
  String? model;
  String? commissionType;
  String? amount;
  String? tag;
  String? description;
  String? note;
  String? embaddedVideoLink;
  num? maximumOrder;
  num? stock;
  bool? isBackOrder;
  String? specification;
  String? warranty;
  bool? preOrder;
  num? productReview;
  bool? isSeller;
  bool? isPhone;
  bool? willShowEmi;
  dynamic badge;
  bool? isActive;
  String? sackEquivalent;
  String? createdAt;
  String? updatedAt;
  dynamic language;
  String? seller;
  dynamic combo;
  String? createdBy;
  dynamic updatedBy;
  List<num>? category;
  List<dynamic>? relatedProduct;
  List<dynamic>? filterValue;
  List<dynamic>? distributors;
Results copyWith({  num? id,
  Brand? brand,
  String? image,
  Charge? charge,
  List<Images>? images,
  String? slug,
  String? productName,
  String? model,
  String? commissionType,
  String? amount,
  String? tag,
  String? description,
  String? note,
  String? embaddedVideoLink,
  num? maximumOrder,
  num? stock,
  bool? isBackOrder,
  String? specification,
  String? warranty,
  bool? preOrder,
  num? productReview,
  bool? isSeller,
  bool? isPhone,
  bool? willShowEmi,
  dynamic badge,
  bool? isActive,
  String? sackEquivalent,
  String? createdAt,
  String? updatedAt,
  dynamic language,
  String? seller,
  dynamic combo,
  String? createdBy,
  dynamic updatedBy,
  List<num>? category,
  List<dynamic>? relatedProduct,
  List<dynamic>? filterValue,
  List<dynamic>? distributors,
}) => Results(  id: id ?? this.id,
  brand: brand ?? this.brand,
  image: image ?? this.image,
  charge: charge ?? this.charge,
  images: images ?? this.images,
  slug: slug ?? this.slug,
  productName: productName ?? this.productName,
  model: model ?? this.model,
  commissionType: commissionType ?? this.commissionType,
  amount: amount ?? this.amount,
  tag: tag ?? this.tag,
  description: description ?? this.description,
  note: note ?? this.note,
  embaddedVideoLink: embaddedVideoLink ?? this.embaddedVideoLink,
  maximumOrder: maximumOrder ?? this.maximumOrder,
  stock: stock ?? this.stock,
  isBackOrder: isBackOrder ?? this.isBackOrder,
  specification: specification ?? this.specification,
  warranty: warranty ?? this.warranty,
  preOrder: preOrder ?? this.preOrder,
  productReview: productReview ?? this.productReview,
  isSeller: isSeller ?? this.isSeller,
  isPhone: isPhone ?? this.isPhone,
  willShowEmi: willShowEmi ?? this.willShowEmi,
  badge: badge ?? this.badge,
  isActive: isActive ?? this.isActive,
  sackEquivalent: sackEquivalent ?? this.sackEquivalent,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  language: language ?? this.language,
  seller: seller ?? this.seller,
  combo: combo ?? this.combo,
  createdBy: createdBy ?? this.createdBy,
  updatedBy: updatedBy ?? this.updatedBy,
  category: category ?? this.category,
  relatedProduct: relatedProduct ?? this.relatedProduct,
  filterValue: filterValue ?? this.filterValue,
  distributors: distributors ?? this.distributors,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    map['image'] = image;
    if (charge != null) {
      map['charge'] = charge?.toJson();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['slug'] = slug;
    map['product_name'] = productName;
    map['model'] = model;
    map['commission_type'] = commissionType;
    map['amount'] = amount;
    map['tag'] = tag;
    map['description'] = description;
    map['note'] = note;
    map['embadded_video_link'] = embaddedVideoLink;
    map['maximum_order'] = maximumOrder;
    map['stock'] = stock;
    map['is_back_order'] = isBackOrder;
    map['specification'] = specification;
    map['warranty'] = warranty;
    map['pre_order'] = preOrder;
    map['product_review'] = productReview;
    map['is_seller'] = isSeller;
    map['is_phone'] = isPhone;
    map['will_show_emi'] = willShowEmi;
    map['badge'] = badge;
    map['is_active'] = isActive;
    map['sack_equivalent'] = sackEquivalent;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['language'] = language;
    map['seller'] = seller;
    map['combo'] = combo;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['category'] = category;
    if (relatedProduct != null) {
      map['related_product'] = relatedProduct?.map((v) => v.toJson()).toList();
    }
    if (filterValue != null) {
      map['filter_value'] = filterValue?.map((v) => v.toJson()).toList();
    }
    if (distributors != null) {
      map['distributors'] = distributors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}