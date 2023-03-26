import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Login(),
        ],
      ),
    );
  }
}
