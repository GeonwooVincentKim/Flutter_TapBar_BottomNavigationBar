import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  final String title;
  final int pageIndex;
  final Function pageInfo;

  ThirdPage({
    @required this.title,
    @required this.pageIndex,
    @required this.pageInfo
  });

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget _buildThirdPageAppBar(){
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Widget _buildThirdPageBody(){
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
        itemBuilder: (context, index) => Text("Hi3"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildThirdPageAppBar(),
      body: _buildThirdPageBody(),
      // drawer: SideMenu(),
    );
  }
}