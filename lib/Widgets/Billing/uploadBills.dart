import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lionsclub/Widgets/Billing/uploadmodel.dart';


class UploadBills extends StatefulWidget {
  final String title;
  @override
  UploadBills(this.title);
  _UploadBillsState createState() => _UploadBillsState();
}

class _UploadBillsState extends State<UploadBills> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: createBody(),
    );
  }

  createBody() {
    return uploadBills();
  }

  Widget uploadBills() {
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: this._controller,
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Venue',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {
            venue = text;
          }),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: this._controller,
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Select Date',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {
            selectDate = text;
          }),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: this._controller,
          maxLines: 1,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Amount ',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {
            amount = text;
          }),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(

            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: _selectFile,
                child: Text('  SELECT FILE '),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('UPLOAD IMAGE'),
                onPressed: () async => await _pickImageFromGallery(),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          if (_filePath != null)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:15 ,right: 40),
                child: Text('File path: $_filePath \n'),
              ),
            ),
          this._imageFile == null
              ? Text('')
          // Placeholder()

              : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
              child: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image.file(
                    this._imageFile,
                    height: 120,
                    width: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                // API CALL
                addbills(
                  venue,
                  selectDate,
                  selectFile,
                  amount,
                  uploadImage,

                );

                return _navigateToSubmit(context);
              },
            ),
          ),
        ),
      ),
    ]);
  }


  dynamic _controller;
  String venue;
  String selectDate;
  String amount;
  dynamic selectFile;
  dynamic uploadImage;


  Future<UploadBillsApi> addbills(
      String venue,
      String amount,
      String selectDate,
      dynamic  selectFile,
      dynamic uploadImage,


      ) async {
    var url = 'http://lions3234d2.com/api.php';
    Map data = {

      "" :venue,
      "" :selectFile,
      "" : selectDate,
      "" :amount,
      "" : uploadImage,

    };

    var response = await http.post(
      url,
      body: data,
    );

    // Activities act = Activities(description,city,clubId,authorId,activityTitle,activityType,date,amount,cabinetOfficers,mediaCoverage,peopleServed,place,image,lionHours);

    print("Response status: ${response.statusCode}");
    Map userMap = jsonDecode(response.body);
    print("Response body: " + userMap.toString());


    // print("description:" + userMap["details"]["description"]);

  }

  void _navigateToSubmit  (BuildContext context) {

    print("Navigate to submit");

    // var object = AdminReportApi(


    //         );



    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UploadBills(widget.title)),
    );
  }





  File _imageFile;


  Future<Null> _pickImageFromGallery() async {
    final File imageFile =
    await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() { this._imageFile = imageFile;
    uploadImage = imageFile;});
  }

  FilePickerCross filePicker = FilePickerCross();

  String _fileString;
  //int _fileLength = 0;
  String _filePath;


  void _selectFile() {
    filePicker.pick().then((value) => setState(() {
      _filePath = filePicker.path;
      selectFile = filePicker.path;

   //   _fileLength = filePicker.toUint8List().lengthInBytes;
      try {
        _fileString = filePicker.toString();
      } catch (e) {
        _fileString =
            'Not a text file. Showing base64.\n\n' + filePicker.toBase64();
      }
    }));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
//    _tabController.dispose();
    super.dispose();
  }

}
