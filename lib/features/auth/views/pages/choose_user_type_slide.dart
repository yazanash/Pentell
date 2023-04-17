import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart' as k;
import 'package:pentelligence/features/auth/views/widgets/user_type.dart';

class ChooseUserTypeSlide extends StatelessWidget {
  const ChooseUserTypeSlide({
    Key? key,
    // required this.callBack,
  }) : super(key: key);

  // final void Function(k.UserType type) callBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Complete You Account"),
        SizedBox(height: 10),
        Text('Choose your type'),
        SizedBox(height: 10),
        UserType(
          icon: const Icon(
            Icons.people_alt_rounded,
            size: 50,
          ),
          title: 'User',
          description: 'student / teacher',
          onPressed: () {
            // callBack(k.UserType.BU);
          },
        ),
        SizedBox(height: 10),
        Text('OR'),
        SizedBox(height: 10),
        UserType(
          icon: const Icon(
            Icons.business_rounded,
            size: 50,
          ),
          title: 'Business',
          description: 'institute / company',
          onPressed: () {
            // callBack(k.UserType.ORG);
          },
        ),
      ],
    );
  }
}
