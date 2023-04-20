import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';

class VersionCast extends StatelessWidget {
  const VersionCast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose version casts",
                style: theme.textTheme.headline1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    "Business cast",
                    style: theme.textTheme.headline3,
                  )),
                  DropdownInput(categories: [
                    CategoryModel(
                        Id: 15, name: "name", description: "description"),
                    CategoryModel(
                        Id: 15, name: "name", description: "description"),
                    CategoryModel(
                        Id: 15, name: "name", description: "description")
                  ], getval: (text) {})
                ],
              ),
              Column(
                children: const [
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                  UserTile(),
                ],
              ),
            ],
          ),
        ));
  }
}
