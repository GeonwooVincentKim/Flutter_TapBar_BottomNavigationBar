import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  final String title;
  final int pageIndex;
  final Function pageInfo;

  SecondPage({
    @required this.title,
    @required this.pageIndex,
    @required this.pageInfo
  });

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Widget _buildSecondPageAppBar(){
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Widget _buildSecondPageBody(){
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
        itemBuilder: (context, index) => Text("Hi2"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildSecondPageAppBar(),
      body: _buildSecondPageBody(),
      // drawer: SideMenu(),
    );
  }
}