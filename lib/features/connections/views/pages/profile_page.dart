import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/pages/courses_tab.dart';
import 'package:pentelligence/features/connections/views/pages/profile_open_img.dart';
import 'package:pentelligence/features/connections/views/provider/profile_state.dart';
import 'package:pentelligence/features/connections/views/widgets/album.dart';
import 'package:pentelligence/features/connections/views/widgets/customTab.dart';
import 'package:pentelligence/features/connections/views/widgets/profile_header.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ChangeNotifierProvider<ProfileState>(
      create: (c) => ProfileState(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<ProfileState>(
              builder: (c, state, child) {
                return ProfileHeader(
                  profile: UserProfile(
                    id: '1',
                    name: "July ahmad",
                    email: "example@gmail.com",
                    phoneNumber: "0994916917",
                    imageUrl: "lib/assets/u4.jpg",
                    address: "address",
                    followingCount: 330,
                    followersCount: 440,
                  ),
                  isFollowed: state.following,
                  follow: () {
                    state.follow = !state.following;
                  },
                  share: () {},
                  more: () {},
                  onPressImg: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => ProfileImageView(
                          imgUrl: "lib/assets/u4.jpg",
                          heroTag: 'p',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.white),
                          // foregroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.edit_note),
                            Text(
                              "Edit Profile",
                              style: theme.textTheme.headline3,
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.white),
                          // foregroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.settings),
                            Text(
                              "Settings",
                              style: theme.textTheme.headline3,
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            AlbumWidget(
              showAll: () {},
              onSelect: (index) {
                showDialog(
                    context: context,
                    builder: (c) {
                      return Popup(
                        body: [Text(index.toString())],
                      );
                    });
              },
            ),
            // Consumer<ProfileState>(
            //   builder: ((context, value, child) {
            //     return Column(
            //       children: [
            //         CustomTabBar(
            //           selectedTab: value.current,
            //           tabs: [
            //             Text('tab 1'),
            //             Text('tab 2'),
            //             Text('tab 3'),
            //           ],
            //           onTabSelect: (index) {
            //             value.tab = index;
            //           },
            //         ),
            //         [
            //           SizedBox(
            //             height: 200,
            //             child: Text('first page'),
            //           ),
            //           SizedBox(
            //             height: 200,
            //             child: Text('second page'),
            //           ),
            //           SizedBox(
            //             height: 200,
            //             child: Text('third page'),
            //           ),
            //         ][value.current],
            //       ],
            //     );
            //   }),
            // )
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: [
                  Container(
                    color: theme.colorScheme.background,
                    child: TabBar(
                      indicatorColor: theme.colorScheme.primary,
                      tabs: [
                        SizedBox(
                          height: 50,
                          child: Center(child: Text('tab 1')),
                        ),
                        SizedBox(
                          height: 50,
                          child: Center(child: Text('tab 2')),
                        ),
                        SizedBox(
                          height: 50,
                          child: Center(child: Text('tab 3')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: TabBarView(
                      children: [
                        CoursesTab(),
                        Container(child: Text('tab 2')),
                        Container(child: Text('tab 3')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
