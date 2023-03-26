import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({
    Key? key,
    required this.planName,
    required this.planDetails,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);
  final String planName, planDetails;
  final bool isSelected;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Card(
        child: Column(
          children: [
            Radio(
              value: isSelected,
              groupValue: true,
              onChanged: (val) => onChanged(),
            ),
            Column(
              children: [
                Text(
                  'planName',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'planDetails',
                  style: TextStyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
