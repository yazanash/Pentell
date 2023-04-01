import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/auth/views/widgets/verify.dart';

class AuthPage extends StatelessWidget {
   ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          children:  [Login(controller: controller,), VerifyCode(controller:controller)],
        ),
      ),
    );
  }
}
