import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/form_item.dart';

class MapPopup extends StatefulWidget {
  const MapPopup({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final void Function(int sessionModel) callback;

  @override
  State<MapPopup> createState() => _MapPopupState();
}

class _MapPopupState extends State<MapPopup> {
  int hours = 1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New Session'),
              ),
              FormInput(
                label: 'Session title',
                getval: (val) {},
              ),
              SizedBox(
                height: 150,
                child: FormInput(
                  label: 'Bio',
                  expands: true,
                  maxLines: null,
                  getval: (val) {},
                ),
              ),
              SizedBox(height: 10),
              FormInput(
                label: 'Session date',
                getval: (val) {},
                icon: Icon(Icons.date_range_outlined),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Session Hours'),
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            if (hours > 1) hours--;
                          });
                        },
                        icon: Icon(Icons.remove, size: 20),
                      ),
                      Text('$hours'),
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            hours++;
                          });
                        },
                        icon: Icon(Icons.add, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('callback');
                      widget.callback(5);
                    },
                    child: Text('Add'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
