import 'package:json_annotation/json_annotation.dart';
import 'category_model.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int? id;
  final String? title;
  final String? slug;
  final num? price;
  final String? description;
  final CategoryModel? category;
  final List<String>? images;

  ProductModel({
    this.id,
    this.title,
    this.slug,
    this.price,
    this.description,
    this.category,
    this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
