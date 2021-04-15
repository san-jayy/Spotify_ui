import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';
import 'package:spotify_ui/main.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            toolbarHeight: kToolbarHeight,
            bottom: TabBar(
              unselectedLabelStyle: TextStyle(fontSize: 70),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text(
                    'Music',
                    style: kprimarytextstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    'Podcast',
                    style: kprimarytextstyle,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Music(),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/b4.jpg'),
                      ),
                      title: Text(
                        'Muscician',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              )
              // Icon(Icons.directions_transit),
              //Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: kToolbarHeight,
          bottom: TabBar(
            indicatorColor: Colors.greenAccent[400],
            tabs: [
              Tab(
                child: Text(
                  'Music',
                  style: ksecondarytextstyle,
                ),
              ),
              Tab(
                child: Text(
                  'Podcast',
                  style: ksecondarytextstyle,
                ),
              ),
              Tab(
                child: Text(
                  'album',
                  style: ksecondarytextstyle,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
