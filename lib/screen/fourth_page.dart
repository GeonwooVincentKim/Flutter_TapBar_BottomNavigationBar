import 'package:flutter/material.dart';


class FourthPage extends StatefulWidget {
  final String title;
  final int pageIndex;
  final Function pageInfo;

  FourthPage({
    @required this.title,
    @required this.pageIndex,
    @required this.pageInfo
  });

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  Widget _buildFourthPageAppBar(){
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Widget _buildFourthPageBody(){
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 0.75,
          mainAxisSpacing: 30.0
        ),
        itemCount: 6,
        itemBuilder: (context, index) => Text("Hi4"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildFourthPageAppBar(),
      body: _buildFourthPageBody(),
      // drawer: SideMenu(),
    );
  }
}