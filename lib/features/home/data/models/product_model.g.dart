// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  slug: json['slug'] as String?,
  price: json['price'] as num?,
  description: json['description'] as String?,
  category: json['category'] == null
      ? null
      : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'images': instance.images,
    };
