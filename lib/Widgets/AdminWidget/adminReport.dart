import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lionsclub/loginPage.dart';

class AdminReport extends StatefulWidget {
  final String title;
  @override
  AdminReport(this.title);
  _AdminReportState createState() => _AdminReportState();
}

class _AdminReportState extends State<AdminReport>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '1',
//      icon: Icons.,
    ),
    Tab(
      text: '2',
    ),
    Tab(
      text: '3',
    ),
    Tab(
      text: "4",
    ),
  ];

  String title = 'DropDownButton';
  static const menuItems = <String>[
    '  A ',
    '  B ',
    '  C ',
    '  D ',
    '  E ',
    '  F ',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map(
        (String value) => PopupMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn2SelectedVal;
  String _bt2SelectedVal;
  String _btn1SelectedVal;
  String _bt1SelectedVal;
  String _btn3SelectedVal;
  String _bt3SelectedVal;
  String _btn4SelectedVal;
  String _bt4SelectedVal;
  TabController _tabController;

  Widget pageOne() {
    return ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.5, //
              color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Reporting',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _btn2SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _btn2SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5, //
                color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Meetings',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _bt2SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _bt2SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Center(
        child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'NEXT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              setState(() {
                _tabController.animateTo((_tabController.index + 1) % 4);
              });
            }),
      ),
    ]);
  }

  Widget pageTwo() {
    return ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5, //
                color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Finance',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _btn1SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _btn1SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5, //
                color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Visit',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _bt1SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _bt1SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Center(
        child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'NEXT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              setState(() {
                _tabController.animateTo((_tabController.index + 1) % 4);
              });
            }),
      ),
    ]);
  }

  Widget pageThree() {
    return ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5, //
                color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Publications',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _btn3SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _btn3SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),




      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5, //
                color: mainColor//          <--- border width here
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Membership',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: TextField(
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Per Month',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                child: Container(
                  height: 58.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _bt3SelectedVal,
                    underline: Container(),
                    hint: Text(
                      '  Grade',
                      style: TextStyle(),
                    ),
                    onChanged: ((String newValue) {
                      setState(() {
                        _bt3SelectedVal = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      Center(
        child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'NEXT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              setState(() {
                _tabController.animateTo((_tabController.index + 1) % 4);
              });
            }),
      ),
    ]);
  }

  Widget pageFour() {
    return ListView(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2.5, //
                    color: mainColor//          <--- border width here
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    child: TextField(
                      maxLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'LCIF',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) => setState(() {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    child: TextField(
                      maxLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Per Month',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) => setState(() {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15,bottom: 8),
                    child: Container(
                      height: 58.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: DropdownButton(
                        isExpanded: true,
                        value: _btn4SelectedVal,
                        underline: Container(),
                        hint: Text(
                          '  Grade',
                          style: TextStyle(),
                        ),
                        onChanged: ((String newValue) {
                          setState(() {
                            _btn4SelectedVal = newValue;
                          });
                        }),
                        items: _dropDownMenuItems,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2.5, //
                    color: mainColor//          <--- border width here
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    child: TextField(
                      maxLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Participation',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) => setState(() {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    child: TextField(
                      maxLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Per Month',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) => setState(() {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 58.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: DropdownButton(
                        isExpanded: true,
                        value: _bt4SelectedVal,
                        underline: Container(),
                        hint: Text(
                          '  Grade',
                          style: TextStyle(),
                        ),
                        onChanged: ((String newValue) {
                          setState(() {
                            _bt4SelectedVal = newValue;
                          });
                        }),
                        items: _dropDownMenuItems,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Center(
        child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'SUBMIT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              setState(() {
                _tabController.animateTo((_tabController.index + 1) % 4);
              });
            }),
      ),
    ]);
  }

  Widget createBody() {
    return TabBarView(
        //     controller: controller,
        controller: _tabController,
        children: <Widget>[
          pageOne(),
          pageTwo(),
          pageThree(),
          pageFour(),
        ]);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: createBody(),
    );
  }
}
