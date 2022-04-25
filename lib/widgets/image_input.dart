import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  State<ImageInput> createState() => _ImageInputState();
}

Future<void> _takePicture() async {
  final ImageFile = await ImagePicker().pickImage(
    source: ImageSource.camera,
    maxWidth: 600,
  );
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: _storedImage != null
            ? Image.file(
                _storedImage,
                fit: BoxFit.cover,
                width: double.infinity,
              )
            : Text(
                "No image taken!",
                textAlign: TextAlign.center,
              ),
        alignment: Alignment.center,
      ),
      Expanded(
        child: FlatButton.icon(
          icon: Icon(Icons.camera),
          label: Text("Take Picture"),
          textColor: Theme.of(context).primaryColor,
          onPressed: _takePicture,
        ),
      )
    ]);
  }
}
