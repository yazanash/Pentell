import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'package:pentelligence/features/auth/views/widgets/verify.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [Login(), VerifyCode()],
      ),
    );
  }
}
