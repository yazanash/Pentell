import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';

class DropdownInput extends StatelessWidget {
  DropdownInput({Key? key, required this.categories, required this.getval})
      : super(key: key);
  final List<CategoryModel> categories;
  int? val = 1;
  Function(CategoryModel?) getval;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(15)),
      child: DropdownButtonFormField<CategoryModel>(
        // icon: const Icon(Icons.category),
        onSaved: (newValue) => getval(newValue),
        hint: const Text("Choose Category"),
        decoration: const InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(width: 20, color: Colors.blueGrey))),
        borderRadius: BorderRadius.circular(15),
        // underline: BorderSide(width: 3,color: Colors.blue),
        // iconSize: 30,
        isExpanded: true,
        // value: categories.firstWhere((element) => element.Id == val),
        onChanged: (value) {
          val = value!.Id;
        },
        items: categories.map<DropdownMenuItem<CategoryModel>>((e) {
          return DropdownMenuItem<CategoryModel>(
            value: e,
            child: Text(
              e.name,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          );
        }).toList(),
      ),
    );
  }
}
