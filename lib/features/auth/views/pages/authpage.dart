import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/auth/views/widgets/verify.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AuthState>(
        create: (context) => AuthState(),
        child: ListView(
          itemExtent: MediaQuery.of(context).size.width,
          scrollDirection: Axis.horizontal,
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Login(
              controller: controller,
              onPressed: () {
                Provider.of<AuthState>(context, listen: false);
              },
            ),
            VerifyCode(
              controller: controller,
              onPressed: () {
                Provider.of<AuthState>(context, listen: false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
