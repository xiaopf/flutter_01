import 'package:flutter/material.dart';
import './demo/ListViewDemo.dart';
import './demo/Hello.dart';
import './demo/DrawerDemo.dart';
import './demo/BottomNavigationBarDemo.dart';
import './demo/BasicDemo.dart';

void main () {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme:ThemeData(
        primarySwatch:Colors.yellow,
        highlightColor:Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child:Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          
          title:Text('xiao'),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('serach button is pressed'),
            ),
          ],
          elevation: 30.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_bar)),
              Tab(icon: Icon(Icons.local_cafe)),
              Tab(icon: Icon(Icons.local_dining)),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            BasicDemo(),
            ListViewDemo(),
            Icon(Icons.local_dining,size:128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }  
}


