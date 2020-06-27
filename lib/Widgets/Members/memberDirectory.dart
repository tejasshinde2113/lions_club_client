import 'package:flutter/material.dart';
class MemberDirectory extends StatefulWidget {
  final String title;
  @override
  MemberDirectory(this.title);
  _MemberDirectoryState createState() => _MemberDirectoryState();
}

class _MemberDirectoryState extends State<MemberDirectory> {
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
