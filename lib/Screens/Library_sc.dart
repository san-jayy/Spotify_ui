import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';

final List<Gridlist> _bgridcontainers = [
  Gridlist(containerImage: 'images/b1.jpg', title: 'Release Radar'),
  Gridlist(containerImage: 'images/b3.jpg', title: 'Happy-O-Happy'),
  Gridlist(containerImage: 'images/b4.jpg', title: 'Bollywood 2.0'),
  Gridlist(containerImage: 'images/b2.jpg', title: 'Bandi Beats'),
  Gridlist(containerImage: 'images/b5.jpg', title: 'Bollywood Mash'),
  Gridlist(containerImage: 'images/b6.jpg', title: 'Bombay Bantai'),
  Gridlist(containerImage: 'images/s1.jpg', title: 'Sound of bengaluru'),
  Gridlist(containerImage: 'images/s2.jpg', title: 'Sound of Delhi'),
  Gridlist(containerImage: 'images/s4.jpg', title: 'Sound of Chennai'),
  Gridlist(containerImage: 'images/s5.jpg', title: 'Sound of Mumbai'),
  Gridlist(containerImage: 'images/s6.jpg', title: 'Sound of Hyderabad'),
  Gridlist(containerImage: 'images/s3.jpg', title: 'Sound of Kolkatta'),
];

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  Color activecolor = Colors.white;
  Color inactivecolor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Row(
            children: [
              TextButton(
                child: Text(
                  'Music',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: activecolor),
                ),
                onPressed: () {
                  setState(
                    () {
                      activecolor = Colors.white;
                      inactivecolor = Colors.grey;
                    },
                  );
                },
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                child: Text(
                  'Podcast',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: inactivecolor),
                ),
                onPressed: () {
                  setState(() {
                    activecolor = Colors.grey;
                    inactivecolor = Colors.white;
                  });
                },
              )
            ],
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.only(right: 60), child: Music())),
        ],
      ),
    ));
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
                  'PlayList',
                  style: ksecondarytextstyle,
                ),
              ),
              Tab(
                child: Text(
                  'Artists',
                  style: ksecondarytextstyle,
                ),
              ),
              Tab(
                child: Text(
                  'Album',
                  style: ksecondarytextstyle,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Podcast(),
            Podcast(),
            Podcast(),
          ],
        ),
      ),
    );
  }
}

class Gridlist {
  String containerImage;
  String title;
  Gridlist({this.containerImage, this.title});
}

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        color: Colors.black,
        child: Column(
          children: _bgridcontainers
              .map((item) => Padding(
                    padding: const EdgeInsets.all(.0),
                    child: ListTile(
                      leading: Image.asset(item.containerImage),
                      title: Text(
                        item.title,
                        style: ksecondarytextstyle,
                      ),
                      subtitle: Text(
                        item.title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
