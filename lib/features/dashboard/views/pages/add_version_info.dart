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
    final theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: theme.colorScheme.background,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "version Info",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    FormInput(
                      label: 'Title of version',
                      getval: (val) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Chairs Number",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline3,
                    ),
                    Row(
                      children: [
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Starting Date ",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline3,
                    ),
                    FormInput(
                      label: '20/04/2023 - 25/04/2023',
                      getval: (val) {},
                      suffix: Icon(Icons.date_range),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Address",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline3,
                    ),
                    FormInput(
                      label: 'EX : Syria Swaida',
                      getval: (v) {},
                    ),
                    SizedBox(
                      height: 10,
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: theme.colorScheme.background,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pricing",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    FormInput(
                      icon: Icon(Icons.payments_outlined),
                      label: "Price",
                      getval: ((val) => {}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Offers",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2,
                    ),
                    DropdownButtonFormField<String>(
                        hint: Text('Choose Offer'),
                        items: offers
                            .map(
                              (e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ),
                            )
                            .toList(),
                        onChanged: (val) {}),
                    FormInput(
                      icon: Icon(Icons.payments_rounded),
                      label: 'Price after Offer',
                      getval: (val) {},
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: theme.colorScheme.background,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requirements & Extras",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Level",
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2,
                    ),
                    DropdownButtonFormField<String>(
                        hint: Text('Choose Level'),
                        items: offers
                            .map(
                              (e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ),
                            )
                            .toList(),
                        onChanged: (val) {}),
                    FormInput(
                      icon: Icon(Icons.payments_rounded),
                      label: 'Price after Offer',
                      getval: (val) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
