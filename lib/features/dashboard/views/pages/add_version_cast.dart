import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_info.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_map.dart';
import 'package:pentelligence/features/dashboard/views/widgets/formsteps.dart';
import 'package:pentelligence/features/dashboard/views/widgets/version_casts.dart';

class CVersionMaker extends StatelessWidget {
  const CVersionMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Casts"),
            bottom: TabBar(tabs: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Info",
                  style: theme.textTheme.headline3,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Casts",
                  style: theme.textTheme.headline3,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Map",
                  style: theme.textTheme.headline3,
                ),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              AddVersion(),
              VersionCast(),
              VersionMap(),
            ],
          )),
    );
  }
}
