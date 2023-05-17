import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo(
      {Key? key,
      required this.title,
      this.info,
      required this.icon,
      this.child})
      : super(key: key);
  final String title;
  final IconData icon;
  final String? info;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Icon(
              icon,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: theme.textTheme.headline3,
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          if (info != null)
            Text(info!,
                style: theme.textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w600,
                )),
          if (info != null)
            const SizedBox(
              height: 10,
            ),
          if (child != null) child!
        ],
      ),
    );
  }
}
