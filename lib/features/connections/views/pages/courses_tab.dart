import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:pentelligence/features/dashboard/views/widgets/course_card.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: 5,
      itemBuilder: (c, index) {
        return CourseWidget(url: IMG_LOGO, isRtl: false);
      },
    );
  }
}
