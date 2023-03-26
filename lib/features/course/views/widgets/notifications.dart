import 'package:flutter/material.dart';

class NotifyWidget extends StatelessWidget {
  const NotifyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xfff6f6f6),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'institute Name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'date',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      'asd asd asd asd as das dasd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd',
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
