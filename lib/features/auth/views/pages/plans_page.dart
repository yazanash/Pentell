import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/plan_widget.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';
import 'package:pentelligence/features/auth/views/widgets/plan_description.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pentelligance')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Choose your plan'),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  PlanWidget(
                    title: 'free trial',
                    isSeelected: i == 0,
                    onPressed: () {},
                    isLeft: i == 0,
                    isRight: i == 2,
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                          PlanDescription(
                            leading: Icon(Icons.person),
                            title: Text('Title'),
                            description: Text(
                                'description description description description description description description description description'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    color: Colors.grey,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)))),
                      onPressed: () {},
                      child: Text('Next'),
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
