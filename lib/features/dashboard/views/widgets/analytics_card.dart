import 'package:flutter/material.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: CircularProgressIndicator(
                  value: 0.75,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          color: Colors.red,
                        ),
                        Text('50%'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          color: Colors.red,
                        ),
                        Text('50%'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          color: Colors.red,
                        ),
                        Text('50%'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          color: Colors.red,
                        ),
                        Text('50%'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          color: Colors.red,
                        ),
                        Text('50%'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
