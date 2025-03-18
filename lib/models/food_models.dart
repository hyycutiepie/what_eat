import 'package:json_annotation/json_annotation.dart';

part 'food_models.g.dart';

@JsonSerializable()
class FoodModels {
  final String name;
  final String imageUrl;

  const FoodModels({
    required this.name,
    required this.imageUrl,
  });
  factory FoodModels.fromJson(Map<String, dynamic> json) =>
      _$FoodModelsFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelsToJson(this);
}

@JsonSerializable()
class FoodsResponse {
  final List<FoodModels> foods;

  const FoodsResponse({this.foods = const []});
  factory FoodsResponse.fromJson(Map<String, dynamic> json) =>
      _$FoodsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FoodsResponseToJson(this);
}
