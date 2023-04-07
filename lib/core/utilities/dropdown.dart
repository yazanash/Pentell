import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';

class DropdownInput extends StatelessWidget {
  DropdownInput({Key? key, required this.categories}) : super(key: key);
  final List<CategoryModel> categories;
  int? val = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(15)),
      child: DropdownButton<CategoryModel>(
        value: categories.firstWhere((element) => element.Id == val),
        onChanged: (value) {
          val = value!.Id;
        },
        items: categories.map<DropdownMenuItem<CategoryModel>>((e) {
          return DropdownMenuItem<CategoryModel>(
            value: e,
            child: Text(
              e.name,
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
          );
        }).toList(),
      ),
    );
  }
}
