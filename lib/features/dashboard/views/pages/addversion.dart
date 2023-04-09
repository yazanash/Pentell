import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';

class AddVersion extends StatelessWidget {
  AddVersion({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CourseHeader(institute: "institute"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: const [
                          Text(
                            "Course Name Will Be Here",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Bio(
                      color: Colors.black,
                      description:
                          "sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn fkj",
                      fontSize: 24.0,
                      alignment: CrossAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 3,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Version Info",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    FormInput(
                      icon: Icon(Icons.payments_outlined),
                      label: "Price",
                      getval: ((val) => {}),
                    ),
                    FormInput(
                      label: "Count of sessions",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FormInput(
                            label: "Session Time",
                            icon: Icon(Icons.timer_sharp),
                            getval: ((val) => {}),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FormInput(
                            label: "Count of hours",
                            icon: Icon(Icons.av_timer_outlined),
                            getval: ((val) => {}),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormInput(
                      icon: Icon(Icons.local_offer_rounded),
                      label: "Time of session",
                      getval: ((val) => {}),
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FormInput(
                            label: "Min Count",
                            icon: Icon(Icons.people),
                            getval: ((val) => {}),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FormInput(
                            label: "Max Count",
                            icon: Icon(Icons.people),
                            getval: ((val) => {}),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text("With Offer"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Offer Info",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FormInput(
                            icon: Icon(Icons.local_offer_rounded),
                            label: "Offer",
                            getval: ((val) => {}),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FormInput(
                            icon: Icon(Icons.payments_outlined),
                            label: "New Price",
                            getval: ((val) => {}),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FormInput(
                            label: "Offer Start With",
                            getval: ((val) => {}),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FormInput(
                            label: "Offer End With",
                            getval: ((val) => {}),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )));
  }
}
