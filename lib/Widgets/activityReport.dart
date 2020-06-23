import 'package:flutter/material.dart';
class ActitvityReport extends StatefulWidget {
  final String title;
  @override
  ActitvityReport(this.title);
  _ActitvityReportState createState() => _ActitvityReportState();
}

class _ActitvityReportState extends State<ActitvityReport> {
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
