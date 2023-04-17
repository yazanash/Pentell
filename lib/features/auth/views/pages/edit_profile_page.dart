import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart' as k;
import 'package:pentelligence/features/auth/views/pages/catagories_slide.dart';
import 'package:pentelligence/features/auth/views/pages/choose_user_type_slide.dart';
import 'package:pentelligence/features/auth/views/pages/fill_account_slide.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  k.UserType userType = k.UserType.BU;

  Widget slider(AuthState state) {
    print(state.level);
    switch (state.level) {
      case 0:
        return ChooseUserTypeSlide(
         
        );

      case 1:
        return FillAccountDetails(
          userType: userType,
          callBack: () {
            state.setLevel = 2;
          },
        );

      case 2:
        return CatagoriesSlide();
        break;
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final state = Provider.of<AuthState>(context, listen: false);
        if (state.level > 0) {
          state.setLevel = state.level - 1;
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Complete your Profile'),
        ),
        body: SafeArea(
          child: Consumer<AuthState>(
            builder: (context, value, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: slider(value),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
