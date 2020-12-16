import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //new
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }

}

class _MyHomePage extends State<MyHomePage>{
  int _selectedIndexForBottomNavigationBar = 0;
  int _selectedIndexForTabBar = 0;


  //1
  static List<Widget> _listOfIconsForBottomNavigationBar = <Widget>[
    Icon(Icons.directions_car),
    Icon(Icons.directions_walk),
    Icon(Icons.directions_bike),
  ];


  //2
  static List<Widget> _listOfIconsForTabBar = <Widget>[
    Icon(Icons.directions_boat),
    Icon(Icons.directions_bus),
    Icon(Icons.directions_railway),
  ];


  //3
  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
      _selectedIndexForTabBar = 0;
    });
  }


  //4
  void _onItemTappedForTabBar(int index) {
    setState(() {
      _selectedIndexForTabBar = index+1;
      _selectedIndexForBottomNavigationBar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {


    //5
    final tabBar = new TabBar(labelColor: Colors.blue,
      onTap: _onItemTappedForTabBar,
      tabs: <Widget>[
        new Tab(
          text: "BOAT",
        ),
        new Tab(
          text: "BUS",
        ),
        new Tab(
          text: "RAILWAY",
        ),
      ],
    );



    //6
    return new DefaultTabController(length: 3, child: new Scaffold(
      appBar: AppBar(bottom: tabBar,backgroundColor: Colors.white, title: Text('Tabs Demo')),

      //7
      body: Center(child:_selectedIndexForTabBar == 0 ?
      _listOfIconsForBottomNavigationBar.elementAt(_selectedIndexForBottomNavigationBar):
      _listOfIconsForTabBar.elementAt(_selectedIndexForTabBar - 1)),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.directions_car),title: Text('CAR')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.directions_walk),title: Text('WALK')),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bike),title: Text('BIKE')),

        ],
        currentIndex: _selectedIndexForBottomNavigationBar,
      ),
    ));
  }

}