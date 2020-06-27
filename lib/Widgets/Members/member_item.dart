import 'package:flutter/cupertino.dart';

class MemberItem{

  bool isExpanded;
  final String memberName;
  final String memberDesgination;
  final Widget body;
  final Image lionsLogo;

  MemberItem(this.isExpanded, this.memberName, this.memberDesgination, this.body, this.lionsLogo);

}