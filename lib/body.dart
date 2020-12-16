import 'package:button_slider/screen/first_page.dart';
import 'package:button_slider/screen/fourth_page.dart';
import 'package:button_slider/screen/second_page.dart';
import 'package:button_slider/screen/third_page.dart';
import 'package:flutter/material.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String title;
  int pageIndex = 0;
  List<Widget> controller = List<Widget>();
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true
  );

  // TabController tabController;
  

  Widget _buildAppBar(){
    return AppBar(
      centerTitle: true,
      bottom: TabBar(
        // onTap: tapBottom,
        tabs: [
          new Tab(text: "First"),
          new Tab(text: "Second"),
          new Tab(text: "Third"),
          new Tab(text: "Fourth")
        ]
      )
    );
  }
 
  Widget _buildBottomNavigationBar(BuildContext context){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) => tapBottom(index),
      currentIndex: pageIndex,
      items: _buildNaviBarItem(),
      iconSize: 45,
      selectedItemColor: Colors.amber,
      backgroundColor: Colors.blueAccent,
    );
  }

  Widget _buildBody(){
    return PageView(
      controller: _pageController,
      children: [
        FirstPage(pageIndex: pageIndex, title: "First", pageInfo: _buildBottomNavigationBar),
        SecondPage(pageIndex: pageIndex, title: "Second", pageInfo: _buildBottomNavigationBar),
        ThirdPage(pageIndex: pageIndex, title: "Third", pageInfo: _buildBottomNavigationBar),
        FourthPage(pageIndex: pageIndex, title: "Fourth", pageInfo: _buildBottomNavigationBar),
      ], onPageChanged: (page) => setState((){pageIndex = page;}),
    );
  }

  void tapBottom(int index){
    setState(() {
      pageIndex = index;
      _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  List<BottomNavigationBarItem> _buildNaviBarItem(){
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.fastfood),
        title: Text("Hamburger")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_cafe),
        title: Text("McCafe")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_dining),
        title: Text("McMorning")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cake),
        title: Text("Dessert")
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    // tabController = new TabController(
    //   initialIndex: 0,
    //   length: 4,
    //   vsync: th,
    // );
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(context),
        // drawer: SideMenu(),
      ),
    );
  }
}