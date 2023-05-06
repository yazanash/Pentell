import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({Key? key, required this.onPressed, this.isLoading = false})
      : super(key: key);

  final VoidCallback onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              backgroundColor:
                  MaterialStateProperty.all<Color>(theme.colorScheme.primary)),
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator.adaptive(
                    strokeWidth: 3,
                    
                  ),
                )
              : Text("Login",
                  style: theme.textTheme.headline3!
                      .copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
