import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_course.dart';
import 'package:pentelligence/features/dashboard/views/pages/advertisment_page.dart';
import 'package:pentelligence/features/dashboard/views/pages/all_lobbies.dart';
import 'package:pentelligence/features/dashboard/views/pages/employees.dart';
import 'package:pentelligence/features/dashboard/views/pages/my_courses.dart';
import 'package:pentelligence/features/dashboard/views/pages/pending_courses.dart';
import 'package:pentelligence/features/dashboard/views/provider/board_page_state.dart';
import 'package:pentelligence/features/dashboard/views/widgets/action_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/board_panel.dart';
import 'package:provider/provider.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ChangeNotifierProvider<BoardPageState>(
      create: (context) => BoardPageState(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        // color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoardPanal2(),
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 10.0, left: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                'Actions:',
                style: theme.textTheme.headline1,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ActionCard(
                        icon: Icons.menu_book_rounded,
                        color: Colors.amber,
                        desc: 'view and edit courses',
                        title: 'Courses',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyCourses()));
                        },
                      ),
                    ),
                    Expanded(
                      child: ActionCard(
                        icon: Icons.speaker_group_rounded,
                        color: Colors.purple,
                        desc: 'boost your engagment',
                        title: 'Offers',
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (c) {
                                return Popup(
                                  title: 'Soon!',
                                  popColor: Colors.orange,
                                  icon: Icon(Icons.construction, size: 50),
                                  positiveAction: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('ok'),
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ActionCard(
                        icon: Icons.groups_rounded,
                        desc: 'view and manage cast',
                        title: 'Cast',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => EmployeesPage()),
                          );
                        },
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: ActionCard(
                        icon: Icons.campaign_rounded,
                        color: Colors.pink,
                        desc: 'boost your reach',
                        title: 'Ads',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => AdvertismentPage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Active Lobbies',
                    style: theme.textTheme.headline1,
                  ),
                  MaterialBtn(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => AllLobbiesPage()),
                      );
                    },
                    title: 'Show All',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (cx, i) {
                  return LobbyCard2(
                    newMessages: 1,
                    progress: 0.5,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => LobbyPage()),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
