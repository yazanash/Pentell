import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/views/pages/plans_page.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:pentelligence/features/auth/views/widgets/choose_action.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/auth/views/widgets/verify.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        itemExtent: MediaQuery.of(context).size.width,
        scrollDirection: Axis.horizontal,
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Login(
            // controller: controller,
            onPressed: () {
              Provider.of<AuthState>(context, listen: false).testBtn();
            },
          ),
          VerifyCode(
            controller: controller,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlansPage()));
            },
          ),
        ],
      ),
    );
  }
}
