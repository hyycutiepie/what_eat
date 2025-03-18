// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModels _$FoodModelsFromJson(Map<String, dynamic> json) => FoodModels(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$FoodModelsToJson(FoodModels instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

FoodsResponse _$FoodsResponseFromJson(Map<String, dynamic> json) =>
    FoodsResponse(
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => FoodModels.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FoodsResponseToJson(FoodsResponse instance) =>
    <String, dynamic>{
      'foods': instance.foods,
    };
