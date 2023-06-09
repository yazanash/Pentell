import 'package:flutter/widgets.dart';

enum Lang {
  AR,
  EN,
}

enum ThemeType {
  light,
  dark,
}

enum UserType {
  ORG,
  BU,
  EMP,
}

enum PopupType {
  rating,
  generic,
  invitation,
  poll,
  alert,
}

const AD_COLORS = [
  Color(0xFFEC3232),
  Color(0xffE8EC32),
  Color(0xff84EC32),
  Color(0xff32ECCA),
  Color(0xff3250EC),
  Color(0xff9A32EC),
  Color(0xffEC32B8),
  Color(0xffEC6A32),
  Color(0xff323232),
  Color(0xffECECEC),
];

const HTTP_API_URL = 'https://dona-soft.com/api/';

const HTTP_EMAIL_LOGIN = '';
const HTTP_CODE_VERIFY = '';
const HTTP_COURSES = '';
const HTTP_CVERSION = '';
const HTTP_PROFILE = '';
const HTTP_USER_PROFILE = '';
const HTTP_ORG_PROFILE = '';

const IMG_NO_CONTENT = 'lib/assets/no_content.png';
const IMG_ERROR = 'lib/assets/error.png';
const IMG_LOGO = 'lib/assets/logo3.png';

const Map<String, String> arabic = {};
const Map<String, String> english = {
  'home': 'Home',
  'complete your profile': 'Complete your profile',
  'sign in': 'Sign in',
  's.p': 's.p',
  'enter code': 'Enter Code',
  'email': 'Email',
  'password': 'Password',
  'phoneNum': 'Phone Number',
  'select a plan': 'Select a plan',
  'add photo': 'Add Photo',
};
