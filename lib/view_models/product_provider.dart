import 'package:elevate_task/models/product_model.dart';
import 'package:elevate_task/services/dio_consumer.dart';
import 'package:elevate_task/services/end_points.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;
  final DioConsumer dioConsumer;
  List<ProductModel> productList = [];
  List<ProductModel> filterList = [];
  List<ProductModel> searchList = [];

  double minPrice = 0;
  double maxPrice = 1000;
  String selectedCategory = "All";
  List<String> categories = [
    "All",
    "jewelery",
    "electronics",
    "women's clothing",
    "men's clothing"
  ];
  ProductProvider({required this.dioConsumer}) {
    getProducts();
  }

  Future getProducts() async {
    final response = await dioConsumer.get(EndPoints.products);
    response.forEach(
      (element) {
        productModel = ProductModel.fromJson(element);
        productList.add(productModel);
      },
    );
    filterList = productList;
    searchList = productList;
    notifyListeners();
  }

  resetFilters() {
    minPrice = 0;
    maxPrice = 1000;
    selectedCategory = "All";
    searchList = productList;
    notifyListeners();
  }

  searchProducts(String query) {
    if (query.isNotEmpty) {
      searchList = filterList
          .where((element) => element.title.toLowerCase().contains(query))
          .toList();
    } else {
      searchList = filterList;
    }
    notifyListeners();
  }

  selectCategory(String category) {
    selectedCategory = category;
    notifyListeners();
  }

  setPrice(RangeValues values) {
    minPrice = values.start;
    maxPrice = values.end;
    notifyListeners();
  }

  filterProducts() {
    if (selectedCategory != "All") {
      filterList = productList
          .where((element) => element.category == selectedCategory)
          .toList();
      searchList = filterList;
    } else if (selectedCategory == "All") {
      searchList = productList;
    }
    notifyListeners();
  }
}
