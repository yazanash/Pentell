import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/connections/views/widgets/album.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({
    Key? key,
    this.addEmplyee,
    this.inviteUser,
    required this.showCourse,
    required this.showBusiness,
    this.report,
    this.exitLobby,
    this.deleteLobby,
  }) : super(key: key);

  final VoidCallback? addEmplyee, inviteUser, report, exitLobby, deleteLobby;
  final VoidCallback showCourse, showBusiness;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Bio(
                alignment: CrossAxisAlignment.start,
                description:
                    'description description description description description description description description description description description description description description description description '),
          ),
          ElevatedButton(
            onPressed: showCourse,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('show course'),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: showBusiness,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('business name'),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
          const SizedBox(height: 5),
          AlbumWidget(
            borderRadius: 15,
            showAll: () {},
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text('Cast'),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: addEmplyee,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Icon(
                            Icons.person_add_alt_sharp,
                            size: 30,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                        ),
                        Text('add employees'),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: inviteUser,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Icon(
                            Icons.share,
                            size: 30,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                        ),
                        Text('invite users'),
                      ],
                    ),
                  ),
                ),
                for (int i = 0; i < 2; i++) UserTile(),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: report,
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.report,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                  ),
                  Text('report'),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: exitLobby,
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.exit_to_app,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                  ),
                  Text('exit lobby'),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: deleteLobby,
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.delete_forever,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                  ),
                  Text('delete lobby'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
