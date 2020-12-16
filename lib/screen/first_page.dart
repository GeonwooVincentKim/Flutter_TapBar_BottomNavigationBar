import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  final String title;
  final int pageIndex;
  final Function pageInfo;

  FirstPage({
    @required this.title,
    @required this.pageIndex,
    @required this.pageInfo
  });

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget _buildFirstPageAppBar(){
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Widget _buildFirstPageBody(){
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
        itemBuilder: (context, index) => Text("Hi"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildFirstPageAppBar(),
      body: _buildFirstPageBody(),
      // drawer: SideMenu(),
    );
  }
}