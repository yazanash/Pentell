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
      width: 200,
      child: Card(
        shape: isSelected
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.blue))
            : null,
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  value: isSelected,
                  groupValue: true,
                  onChanged: (val) => onChanged(),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'planName',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
