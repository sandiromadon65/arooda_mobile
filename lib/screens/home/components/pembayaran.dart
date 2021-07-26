import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';
import '../../../size_config.dart';

class Pembayaran extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String valueChoose;
  List nominal = [
    '1000',
    '2000',
    '5000',
    '10000',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(15)),
          child: DropdownButton(
            hint: Text('Pilih : '),
            dropdownColor: Colors.grey,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue;
              });
            }, items: [],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
