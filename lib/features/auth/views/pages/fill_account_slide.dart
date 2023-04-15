import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class FillAccountDetails extends StatelessWidget {
  FillAccountDetails({
    Key? key,
    required this.userType,
    required this.callBack,
  }) : super(key: key);

  final UserType userType;
  final void Function() callBack;
  final _formKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    print(userType);
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileImage(url: IMG_LOGO),
            Text('profile picture'),
          ],
        ),
        Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormInput(
                  getval: (val) {},
                ),
                FormInput(
                  getval: (val) {},
                ),
                FormInput(
                  getval: (val) {},
                ),
                FormInput(
                  getval: (val) {},
                ),
                FormInput(
                  getval: (val) {},
                ),
                FormInput(
                  getval: (val) {},
                ),
                ElevatedButton(
                  onPressed: callBack,
                  child: Text('asdas'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
