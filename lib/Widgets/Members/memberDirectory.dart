import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/Members/members_expand.dart';
class MemberDirectory extends StatefulWidget {
  final String title;
  @override
  MemberDirectory(this.title);
  _MemberDirectoryState createState() => _MemberDirectoryState();
}

class _MemberDirectoryState extends State<MemberDirectory> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title
        ),
      ),
      body: MembersExpansion(),
    );
  }
}
