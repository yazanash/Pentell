import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.selectedTab,
    required this.tabs,
    this.onTabSelect,
  }) : super(key: key);

  final int selectedTab;
  final List<Widget> tabs;
  final void Function(int)? onTabSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: tabs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: onTabSelect != null ? () => onTabSelect!(index) : null,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  border: index == selectedTab
                      ? const Border(
                          bottom: BorderSide(width: 3, color: Colors.blue))
                      : null,
                ),
                child: tabs[index],
              ),
            );
          }),
    );
  }
}
