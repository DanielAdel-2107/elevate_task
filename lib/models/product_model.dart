import 'package:elevate_task/services/end_points.dart';

class ProductModel {
  final String title;
  final String image;
  final double price;
  final int id;
  final String description;
  final RatingModel ratingModel;
  final String category;

  ProductModel({
    required this.id,
    required this.ratingModel,
    required this.category,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json[ApiKeys.title] ?? 'No Title',
      image: json[ApiKeys.image] ?? '',
      price: (json[ApiKeys.price] as num?)?.toDouble() ?? 0.0,
      description: json[ApiKeys.description] ?? 'No Description',
      id: json[ApiKeys.id] ?? 0,
      category: json[ApiKeys.category] ?? 'Unknown Category',
      ratingModel: RatingModel.fromJson(json[ApiKeys.rate] ?? {}),
    );
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, image: $image, price: $price, description: $description, category: $category, ratingModel: $ratingModel)';
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: (json[ApiKeys.rate] as num?)?.toDouble() ?? 0.0,
      count: json[ApiKeys.count] ?? 0,
    );
  }

  @override
  String toString() {
    return 'RatingModel(rate: $rate, count: $count)';
  }
}
