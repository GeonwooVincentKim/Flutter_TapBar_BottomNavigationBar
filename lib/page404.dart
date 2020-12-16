import 'package:button_slider/attribute/text.dart';
import 'package:flutter/material.dart';


class Page404 extends StatelessWidget{
  final String title;
  Page404({this.title});

  Widget _build404Image(){
    return Container(
      child: Image.asset(
        "assets/basicimages/404.jpg",
        fit: BoxFit.fill
      ),
    );
  }

  Widget _build404appBar(){
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.amber,
      centerTitle: true,
    );
  }

  Widget _build404Text(){
    return Container(
      child: Column(
        children: [
          TextDesign(
            basicText: "No Page here!!!",
            textStyle: TextStyle(color: Colors.black, fontSize: 20)
          ),
          Divider(height: 5, color: Colors.transparent),
          TextDesign(
            basicText: "Please match the URL you want to go",
            textStyle: TextStyle(color: Colors.black, fontSize: 10)
          )
        ],
      )
    );
  }

  Widget _build404Body(BuildContext context){
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Card(
          child: Column(
            children: [
              _build404Image(),
              _build404Text(),
            ],
          )
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _build404appBar(),
      body: _build404Body(context),
      // drawer: SideMenu(),
    );
  }
}