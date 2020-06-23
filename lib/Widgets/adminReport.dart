import 'package:flutter/material.dart';
class AdminReport extends StatefulWidget {
  final String title;
  @override
  AdminReport(this.title);
  _AdminReportState createState() => _AdminReportState();
}

class _AdminReportState extends State<AdminReport> {
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
