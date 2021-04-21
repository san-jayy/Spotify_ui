import 'package:flutter/material.dart';
import 'package:spotify_ui/Screens/Library_sc.dart';
import 'Screens/primiumCards/Primium_sc.dart';
import 'package:spotify_ui/Screens/search_screen.dart';
import 'Screens/Homepage/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;

  List<Widget> tabs = <Widget>[
    Home0(),
    SearchPage(),
    LibraryScreen(),
    Premium(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            currentIndex: _currentindex,
            unselectedItemColor: Colors.white60,
            backgroundColor: Colors.grey[850],
            selectedFontSize: 15,
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  backgroundColor: Colors.grey[900]),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.grey[900]),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Your Library',
                  backgroundColor: Colors.grey[900]),
              BottomNavigationBarItem(
                  icon: Icon(Icons.queue_music_outlined),
                  label: 'Premium',
                  backgroundColor: Colors.grey[900]),
            ],
          ),
          body: tabs[_currentindex]),
    );
  }
}
