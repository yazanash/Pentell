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
  final offers = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Version'),
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
                  "Version Contents",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                FormInput(
                  label: 'version label',
                  getval: (val) {},
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(child: Text('Chairs Number')),
                    ),
                    Expanded(
                      child: FormInput(
                        label: "Max",
                        expandIcon: true,
                        icon: Icon(Icons.arrow_drop_up_rounded, size: 30),
                        getval: ((val) => {}),
                      ),
                    ),
                    Expanded(
                      child: FormInput(
                        label: "Min",
                        expandIcon: true,
                        icon: Icon(Icons.arrow_drop_down_rounded, size: 30),
                        getval: ((val) => {}),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormInput(
                        icon: Icon(Icons.payments_outlined),
                        label: "Price",
                        getval: ((val) => {}),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                          hint: Text('choose offer'),
                          items: offers
                              .map(
                                (e) => DropdownMenuItem<String>(
                                  child: Text(e),
                                  value: e,
                                ),
                              )
                              .toList(),
                          onChanged: (val) {}),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                FormInput(
                  icon: Icon(Icons.payments_rounded),
                  label: 'price after offer',
                  getval: (val) {},
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(child: Text('starting date range')),
                    ),
                    Expanded(
                      flex: 2,
                      child: FormInput(
                        label: 'from to',
                        getval: (val) {},
                      ),
                    ),
                  ],
                ),
                Text('Address'),
                FormInput(
                  label: 'address',
                  getval: (v) {},
                ),
                SizedBox(
                  height: 200,
                  child: FormInput(
                    expands: true,
                    maxLines: null,
                    label: 'Requirements',
                    getval: (v) {},
                  ),
                ),
                DropdownButtonFormField<String>(
                  hint: Text('defficulty level'),
                  items: offers
                      .map(
                        (e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ),
                      )
                      .toList(),
                  onChanged: (val) {},
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(child: Text('starting date range')),
                    ),
                    Expanded(
                      flex: 2,
                      child: FormInput(
                        label: 'from to',
                        getval: (val) {},
                      ),
                    ),
                  ],
                ),
                DropdownButtonFormField<String>(
                  hint: Text('Day / Night'),
                  items: offers
                      .map(
                        (e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ),
                      )
                      .toList(),
                  onChanged: (val) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
