import 'package:flutter/material.dart';
class ActivityReport extends StatefulWidget {
  final String title;
  @override
  ActivityReport(this.title);
  _ActivityReportState createState() => _ActivityReportState();
}

class _ActivityReportState extends State<ActivityReport> {
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
