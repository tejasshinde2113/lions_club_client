import 'package:flutter/material.dart';
class UploadBills extends StatefulWidget {
  final String title;
  @override
  UploadBills(this.title);
  _UploadBillsState createState() => _UploadBillsState();
}

class _UploadBillsState extends State<UploadBills> {
  createBody(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title
        ),
      ),
      body: createBody(),
    );
  }
}
