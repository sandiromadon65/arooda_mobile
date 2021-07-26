import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void nextField(String value, FocusNode focusNode) {
  if (value.length == 1) {
    focusNode.requestFocus();
  }
}

class Camera extends StatefulWidget {
  static String routeName = "/camera";
  const Camera({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  CameraState createState() => CameraState();
}

class CameraState extends State<Camera> {
  File _img;
  final picker = ImagePicker();
  Future<void> _takePic() async {
    final pickedFile =
        await picker.getImage(source: ImageSource.camera, maxWidth: 600);
    setState(() {
      if (pickedFile != null) {
        _img = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _img != null
              ? Image.file(
                  _img,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text(
                  'No Image',
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          // ignore: deprecated_member_use
          child: FlatButton.icon(
            icon: Icon(Icons.camera),
            label: Text('Take Pic'),
            textColor: Theme.of(context).primaryColor,
            onPressed: _takePic,
          ),
        ),
      ],
    );
  }
}
