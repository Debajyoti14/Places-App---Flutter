import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/image_input.dart';

class AddPlacesScreen extends StatefulWidget {
  static const routeName = '/Add-Places';
  @override
  State<AddPlacesScreen> createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  final _titleController = TextEditingController();
  File _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _savePlace() {
    if (_titleController.text.isEmpty || _pickedImage == null) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add places"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: 'Title'),
                          controller: _titleController,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ImageInput(_selectImage),
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("Add Place"),
                  onPressed: () {},
                  elevation: 0,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  color: Theme.of(context).accentColor)
            ]));
  }
}
