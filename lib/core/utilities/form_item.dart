import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormInput extends StatelessWidget {
  FormInput(
      {Key? key,
      this.label,
      this.icon,
      this.suffix,
      this.maxlen,
      this.onTap,
      required this.getval})
      : super(key: key);
  String? label;
  Widget? icon;
  Widget? suffix;
  int? maxlen = 1;
  VoidCallback? onTap;
  Function(String?) getval;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      // maxLength: maxlen,
      // obscureText: true,
      // obscuringCharacter: "*",
      maxLines: maxlen,
      onSaved: (newValue) => getval(newValue),
      // maxLines:null,
      onTap: onTap,
      // minLines: null,
      // expands: true,
      decoration: InputDecoration(
        // icon: icon,
        prefixIcon: icon,
        labelText: label,
        suffixIcon: suffix,
        // labelStyle: TextStyle(color: Colors.blueGrey),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2)),
        focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 2)),
        disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey, width: 2)),
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey, width: 2)),
      ),
    );
  }
}
