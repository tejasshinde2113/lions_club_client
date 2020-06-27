import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:file_picker_cross/file_picker_cross.dart';

class UploadBills extends StatefulWidget {
  final String title;
  @override
  UploadBills(this.title);
  _UploadBillsState createState() => _UploadBillsState();
}

class _UploadBillsState extends State<UploadBills> {
  File _imageFile;

  Future<Null> _pickImageFromGallery() async {
    final File imageFile =
        await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() => this._imageFile = imageFile);
  }

  FilePickerCross filePicker = FilePickerCross();

  String _fileString;
  int _fileLength = 0;
  String _filePath;

  Widget uploadBills() {
    return ListView(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Venue',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {}),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Select Date',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {}),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Amount ',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {}),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Row(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Text('UPLOAD IMAGE'),
                      //icon: Icon(Icons.photo),
                      onPressed: () async => await _pickImageFromGallery(),
                    ),
                    RaisedButton(
                      onPressed: _selectFile,
                      child: Text('Select File'),
                    ),
                    Text('File path: $_filePath (Might cause issues on web)\n'),
                    Text('File length: $_fileLength\n'),
                    Text('File as String: $_fileString\n'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      this._imageFile == null
          ? Text('')
          // Placeholder()

          : Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 290.0),
              child: Image.file(
                this._imageFile,
                height: 50,
                width: 50,
              ),
            ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: FlatButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text(
              'SUBMIT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            onPressed: () {
              setState(() {});
            },
          ),
        ),
      ),
    ]);
  }

  @override
  void initState() {
    super.initState();
    //  _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
//    _tabController.dispose();
    super.dispose();
  }

  createBody() {
    return uploadBills();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: createBody(),
    );
  }

  void _selectFile() {
    filePicker.pick().then((value) => setState(() {
          _filePath = filePicker.path;
          _fileLength = filePicker.toUint8List().lengthInBytes;
          try {
            _fileString = filePicker.toString();
          } catch (e) {
            _fileString =
                'Not a text file. Showing base64.\n\n' + filePicker.toBase64();
          }
        }));
}
}
