
import 'package:pentelligence/features/course/models/entities/categories.dart';

class CategoryModel extends Category {
  CategoryModel(
      {required super.Id, required super.name, required super.description});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        Id: json['Id'], name: json['name'], description: json['description']);
  }

  Map<String,dynamic> toMap(Category category){
   return { 
    'Id':category.Id,
    'name':category.name, 
    'description':category.description};
  }
}
