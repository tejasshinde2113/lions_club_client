import 'package:flutter/material.dart';
class UpcomingEvent extends StatefulWidget {
  final String title;
  @override
  UpcomingEvent(this.title);
  _UpcomingEventState createState() => _UpcomingEventState();
}

class _UpcomingEventState extends State<UpcomingEvent> {
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
