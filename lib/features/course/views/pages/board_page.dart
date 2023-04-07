import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/dashboard/views/widgets/board_panel.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoardPanal(
        profile: UserProfile(
      id: '1',
      name: 'asdasd',
      email: 'asdasdasd',
      phoneNumber: '000000',
      followersCount: 5,
      followingCount: 10,
      imageUrl: IMG_LOGO,
      address: 'asdddddd',
    ));
  }
}
