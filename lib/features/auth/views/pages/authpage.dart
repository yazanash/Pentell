import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart' as k;
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:pentelligence/features/auth/views/widgets/choose_action.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/auth/views/widgets/signup.dart';
import 'package:pentelligence/features/auth/views/widgets/user_type.dart';
import 'package:pentelligence/features/auth/views/widgets/verify.dart';
import 'package:provider/provider.dart';

import 'choose_interests.dart';
import 'choose_user_type_slide.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SignUp(onPressed: () {}),
      body: Login(onPressed: () {}),
    );
  }
}
